#Loading Libraries
library(DataExplorer)
library(tidyverse)
library(tidymodels)

#Loading the dataset
#type = "df"
high_school_data<-read.csv("cleansed_dataset.csv",header = TRUE)
high_school_data$final_mark_dummy<-as.factor(high_school_data$final_mark_dummy)

head(high_school_data)
tail(high_school_data)
str(high_school_data)
dim(high_school_data)
summary(high_school_data)
skimr::skim(high_school_data)
create_report(high_school_dataset)

plot(high_school_data$final_mark_dummy)
set.seed(42)

t_s <- initial_split(high_school_data, prop = .7)
t_training <- training(t_s)
t_testing <- testing(t_s)

t_kf <- vfold_cv(t_training)

# Data Pre-processing via tidy
t_receipt <- recipe(final_mark_dummy~., data = t_training) %>% 
  step_corr(all_numeric(), -all_outcomes()) %>% 
  step_nzv(all_numeric(), -all_outcomes()) %>% 
  step_normalize(all_numeric(), -all_outcomes()) %>% 
themis::step_upsample(final_mark_dummy)%>%
step_YeoJohnson(all_numeric(), -all_outcomes()) 
  #themis::step_downsample(final_mark_dummy)




# Initializing the model via KNN and Decision Tree Algorithm
t_dt_modeling <- parsnip::decision_tree(tree_depth = tune(),
                                              min_n = tune()) %>% 
  set_mode("classification") %>% 
  set_engine("rpart")

t_knn_modeling <- nearest_neighbor(neighbors = tune()) %>% 
  set_mode("classification") %>% 
  set_engine("kknn")


# Creating grid for the inititied models
grid_for_dtree <- grid_regular(parameters(t_dt_modeling), levels = 5)
grid_for_knn <- grid_regular(parameters(t_knn_modeling), levels = 10)

# Following step will tune them
dtree_tunning <- tune_grid(t_dt_modeling,
                           t_receipt,
                           resamples = t_kf,
                           grid = grid_for_dtree)

knn_tunning <- tune_grid(t_knn_modeling,
                      t_receipt,
                      resamples = t_kf,
                      grid = grid_for_knn)


#Following steip will use ROC_AUC handtill to get the most appropriate parameters
Parameters_for_dtree <- dtree_tunning %>% select_best("roc_auc")
parameters_for_knn <- knn_tunning %>% select_best("roc_auc")


#Following step will set the found best parameters
t_dt_modeling <- finalize_model(t_dt_modeling, Parameters_for_dtree)
t_knn_modeling <- finalize_model(t_knn_modeling, parameters_for_knn)


# For combining model, parameters, and preprocessing Following step will assemble the built modesl with their parameters and pre-processing step
workflow_for_dtree <- workflow() %>% 
  add_model(t_dt_modeling) %>% 
  add_recipe(t_receipt)

workflow_for_knn <- workflow() %>% 
  add_model(t_knn_modeling) %>% 
  add_recipe(t_receipt)

# Following yardstick package is used to intitiate the confusion matrix of built models

resources_for_dtree <- last_fit(workflow_for_dtree, t_s)
resources_for_knn <- last_fit(workflow_for_knn, t_s)

bind_rows(
  resources_for_dtree %>% mutate(model = "dtree"),
  resources_for_knn %>% mutate(model = "knn")
) %>% 
  unnest(.metrics)

print("Table of Decision Tree Confusion Matrix")
resources_for_dtree %>% unnest(.predictions) %>% 
  conf_mat(truth = final_mark_dummy, estimate = .pred_class)

print("Table of KNN Confusion Matrix")
resources_for_knn %>% unnest(.predictions) %>% 
  conf_mat(truth = final_mark_dummy, estimate = .pred_class)


# Following step will save the generated model
final_built_model <- fit(workflow_for_dtree, high_school_data)
saveRDS(final_built_model, "Part2_Model_dtree.rds")