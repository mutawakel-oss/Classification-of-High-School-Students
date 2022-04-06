library(DataExplorer)
library(fastDummies)
#Loading the dataset
high_school_dataset<-read.csv("High_School_Original.csv",header = TRUE)
head(high_school_dataset)
dim(high_school_dataset)
head(high_school_dataset)
skimr::skim(high_school_dataset)
create_report(high_school_dataset)
#Data Pre-processing Steps


#Converting categorical variables to numeric factors

high_school_dataset$nationality.f = as.numeric(factor(high_school_dataset$student_nationality))
high_school_dataset$school_name.f = as.numeric(factor(high_school_dataset$school_name))
high_school_dataset$town_name.f = as.numeric(factor(high_school_dataset$town_name))
high_school_dataset$section_name.f = as.numeric(factor(high_school_dataset$section_name))
high_school_dataset$study_type.f = as.numeric(factor(high_school_dataset$study_type))



#Creating dummy varaibles for the variable (final_mark)



head(high_school_dataset)
write.csv(high_school_dataset,"coded_dataset.csv")

