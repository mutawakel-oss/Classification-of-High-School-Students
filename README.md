# Classification of High School Students:
I have worked as a data scientist for this project by using R language and Python language
This project aims to apply classification model for the high school final marks of a country.
#	Abstract
Classifying huge amount of data is one of the most important data mining techniques applied in different industries including education industry. Therefore, this research aims to develop the understanding for the classifications of high-school student marks of a country in 2016 by finding the expected classification of high-school final mark. An exploration and pre-processing steps were applied to understand and prepare the dataset after anonymizing it. Three different classification methods: (KNN, Decision Tree, Neural Networks) were used to apply the classification and compare the results of the classification via the three used methods. As a result of this implementation, a prediction system has been built with a shiny dashboard to predict the final mark of future students based on the built classification model. In addition, a comparison of the results for used methods and algorithms have been fully discussed.
#	Research Objectives
1.	Research the academic literature related to the classification DM techniques.
2.	Classifying the dataset of high-school students based on their mentioned attributes.
3.	Analyse and discuss the results of applied classification DM technique.
Following are the algorithms used to apply the classification of this research dataset along with R package used to apply them:
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture28.png)

Following is a screenshot for the created dashboard:
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture29.png)

Following are the screenshots of the classification model in SAS Enterprise Miner:

![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture30.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture31.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture31.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture33.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture34.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture35.png)
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture36.png)
#	Results Analysis and Discussion:
#	Result Comparison and Technical Finding:
The evaluation metric used to evaluate the applied classification method was the accuracy percentage of predicting the target variable compared to the actual value:
•	Although the accuracy percentage of decision tree classification method applied in R was (77%) with the best optimized parameters, the same method provided an accuracy percentage of (85%) in SAS Enterprise Miner. This supports the finding of a recent study which found that SAS Enterprise Miner is among the best tools used to apply classification via Decision Tree among the following three assessed tools (Abdullah, 2010):
a)	SAS Enterprise Miner
b)	SPSS Clementine
c)	IBM DB2
However, R was not among the assessed three tools, therefore we cannot generalize the finding of mentioned study to other tools such as R studio.
 
![Sample Graph](https://github.com/mutawakel-oss/Classification-of-High-School-Students/blob/main/Picture37.png)

•	Although both tools (R & SAS Enterprise Miner) were applied on the same cleansed dataset, the time taken to apply the classification in SAS is much less that the time taken to apply the classification in R. It took hours to apply the classification on the dataset which includes 175,321 rows while it took less than two minutes to run the classification models in SAS. Therefore, SAS is more efficient in classification with respect to the time required to apply classifications.
•	A detailed discussion on the results obtained from the two tools (R & SAS Enterprise Miner) were included in the previous sections of classification on R and SAS.
# Conclusion:
Classifying huge amount of data is one of the most important data mining techniques and therefore the aim of this research was to develop the understanding for the classifications of high-school students of a country in 2016 by finding the expected classification of high-school final mark. All the objectives of this research were met as follows:
1)	First objective was to research the academic literature related to the classification DM techniques. The literature review section of this research started by defining the classification based on different definitions in the literature. Then, the use of this DM technique in education sector was briefly reviewed to understand the applications of this technique in educational institutes. Furthermore, five different classification methods were reviewed, and the three methods were selected for this research.
2)	Second objective was to classify the dataset of high-school students based on the provided attributes. A detailed discussion on data understanding, data pre-processing via R language, and modelling via R & SAS has been included in this research to effectively meet this objective.
3)	Third objective was to analyse and discuss the results of applied classification DM technique. The results of classifying the dataset were fully discussed in each section (R & SAS). Furthermore, a discussion on the differences between the performance and results of applying the classification models in SAS & R were viewed and supported with a published study in the literature.
To sum up, all the three determined objectives of this research have been met effectively.
