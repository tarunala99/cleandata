---
title: "CodeBook.md"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

Variables
```
b is the fully blinded train data set
d is the fully blinded test data set
e is the merged data set
meanv is the mean of the data
sdv is the standard deviation of the data 
p is the final column names 
q is the data frame after it is melted with subject and activity
r is the tidy data set
```
Transformations
```
reading the data from the training and test files
binding to merge them into one file
finding the mean and the standard deviation
creating a col names vector by coercion 
applying col names vector
melting the data and then casting it 
```
