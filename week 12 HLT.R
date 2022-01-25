#Q1)
a=c(1, 2, 3, 4, 5)
b=c(6, 7, 9, 2, 7)
c=c(1, 9, 2, 5, 4)

# Creating a 3X5 (3 rows and 5 columns) matrix by using rbind function 
matrix1=rbind(a,b,c)
#Creating a 5X3 (5 rows and 3 columns) matrix by using cbind function 
matrix2=cbind(a, b,c)

print(matrix1)

#plotting graph where entries in vectors a and b are from the x and y axis respectively.
plot(a,b, type="o")

#Q2)

#creating data frame
emp.info <- data.frame(Name=c("Jane", "Anna", "Tom", "Wendy", "Lauren"), 
                     Age=c(39, 23, 49, 36, 26), 
                     Role=c("Manager", "Junior Consultant", "Senior Manager", "HR coordinator", "Finance manager"), 
                     Length_of_service=c("5 years", "10 years", "20 years", "3 years", "7 years")) 


#printing emp.info data frame
print(emp.info)


#Q3 of HLT
install.packages("GGPLOT 2")

#Sorry cannot do Q3 since this version of R studio does not have GGPLOT 2 library

#Q4)

#creating a row vector

H<- c(37, 94, 26, 47, 79)
N<- c("Joe","Johnson","Alex","Anna", "Wendy")

# creating the barchart
barplot(H,Names.arg=N, xlab="Names of students" , ylab="Percentage exam score")

#Q5)

#taking input from user

input1<-readline("Please enter your name")

print(input1)


input2<-readline("Please enter your age")

print(input2)

#Q6)

# creating a list of integers from 50 to 20
List1<- c(20:50)
print(List1)

# finding the mean of the list of integers in List1
mean<- mean(List1)
print(mean)

# find the sum of all integers in List1
sum(List1)

#Q7)struggling to do Q7

vector<-RNGkind(-50:50, 10)
RNGkind(kind=null)
