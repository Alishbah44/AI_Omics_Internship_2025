#searching directory
setwd("C:\\Users\\Lenovo\\Desktop\\AI_Omics_Internship_2025")
setwd("C:\\Users\\Lenovo\\Desktop\\AI_Omics_Internship_2025\\Module_1")
#creating folder
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")
#choosing directory and viewing info

data= read.csv(file.choose(patient_info))
View(patient_info)
str(patient_info)
colnames(patient_info)
row.names(patient_info)
#finding mean value
mean(patient_info$age)
mean(patient_info$bmi)
#basic vizulaization
plot(patient_info$age)
hist(patient_info$age)
barplot(patient_info$age)
hist(patient_info$bmi)
plot(patient_info$bmi)
barplot(patient_info$bmi)

summary(patient_info)

#R data types
class(patient_info$patient_id)

#converting into numeric
class(patient_info$bmi)

#converting numeric into integer
bmi = c(patient_info$bmi)
class(bmi)
bmi=as.integer(bmi)
class(bmi)

#categorical data conversion
gender = c("female", "male")
class(gender)
gender= as.factor(gender)
class(gender)
gender

diagnosis = c("cancer", "normal", "cancer", "normal")
class(diagnosis)
diagnosis = as.factor(diagnosis)
class(diagnosis)
diagnosis


smoker = c("no" , "yes" , "no", "yes")
class(smoker)
smoker = as.factor(smoker)
class(smoker)
smoker

#changing levels 

diagnosis = factor(diagnosis,
                   levels = c("normal" , "cancer"))
diagnosis

#convert factor to num factor 
patient_info$gender= as.factor(patient_info$gender)
str(patient_info$gender)
patient_info$gender = ifelse(patient_info$gender == "Female", 1, 0)


summary(patient_info)
str(patient_info)

patient_info$smoker= as.factor(patient_info$smoker)
str(patient_info$smoker)
patient_info$smoker = ifelse(patient_info$smoker == "Yes", 1, 0)
class(patient_info$smoker)

#saving file
write.csv(patient_info, file = patient_info_clean.csv)

write.csv(patient_info, file = "clean_data/ patient_info_clean.csv")

#Save the entire R workspace
save.image(file = "full_workspace.RData")
