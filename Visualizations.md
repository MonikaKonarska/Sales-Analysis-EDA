---
title: "Visualizations"
author: "Monika Konarska"
output:  
  html_document:
    keep_md: true

---

![](https://www.thesierraleonetelegraph.com/wp-content/uploads/2018/11/black-friday-sale.jpg){width=500px}
<br/>
<br/>











# Data structure

In dataset are 12 columns. The dataset contains different kinds of variables - numerical or categorical.
I used my function `DescribeVariables()` to get more infromations about structure of data. You can find code of this function in script prepare_data_func.R  
Here the results:
<br/>
<br/>

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>Table 1: Structure of data</caption>
 <thead>
  <tr>
   <th style="text-align:left;font-weight: bold;"> variable </th>
   <th style="text-align:left;font-weight: bold;"> type </th>
   <th style="text-align:right;font-weight: bold;"> numberOfNa </th>
   <th style="text-align:right;font-weight: bold;"> p_numberOfNa </th>
   <th style="text-align:right;font-weight: bold;"> uniqueValues </th>
   <th style="text-align:right;font-weight: bold;"> p_uniqueValues </th>
   <th style="text-align:right;font-weight: bold;"> zeros </th>
   <th style="text-align:right;font-weight: bold;"> p_zeros </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> User_ID </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5891 </td>
   <td style="text-align:right;"> 0.0109584 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Product_ID </td>
   <td style="text-align:left;"> factor </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3623 </td>
   <td style="text-align:right;"> 0.0067395 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Gender </td>
   <td style="text-align:left;"> factor </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0000037 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Age </td>
   <td style="text-align:left;"> factor </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0000130 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Occupation </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 0.0000391 </td>
   <td style="text-align:right;"> 68120 </td>
   <td style="text-align:right;"> 0.1267167 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> City_Category </td>
   <td style="text-align:left;"> factor </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0000056 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Stay_In_Current_City_Years </td>
   <td style="text-align:left;"> factor </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.0000093 </td>
   <td style="text-align:right;"> 72725 </td>
   <td style="text-align:right;"> 0.1352829 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Marital_Status </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0000037 </td>
   <td style="text-align:right;"> 317817 </td>
   <td style="text-align:right;"> 0.5912027 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Product_Category_1 </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 0.0000335 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Product_Category_2 </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 166986 </td>
   <td style="text-align:right;"> 0.3106271 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 0.0000335 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Product_Category_3 </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 373299 </td>
   <td style="text-align:right;"> 0.6944103 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 0.0000298 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; font-weight: bold;color: red;"> Purchase </td>
   <td style="text-align:left;"> integer </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 17959 </td>
   <td style="text-align:right;"> 0.0334073 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
</tbody>
</table>
<br/>
<br/>

Type of variables: *Occupation*, *Product_Category_1*, *Product_Category_2* and *Marital_Status* is integer. It needed to conver types this variables to factor.


```r
data$Occupation         <- factor(data$Occupation, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19))
data$Product_Category_1 <- factor(data$Product_Category_1, levels = c(1,2,3,4,5,6,7,8,10,11,12,13,15,16,18))
data$Product_Category_2 <- factor(data$Product_Category_2, levels = c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18))
data$Product_Category_3 <- factor(data$Product_Category_3, levels = c(3,4,5,6,8,9,10,11,13,14,15,16,17,18))
data$Marital_Status     <- factor(data$Marital_Status, levels = c(0,1))
```

<br/>
<br/>
Checking for NA values in columns we can see that the column *Product_Category_2* is fill by 31% of NA values and the column *Product_Category_3* is fill by 69% NA values. We have got colum User_ID to identify each customer. We have got 3 623 unique products in data (*Product_ID*). 


<br/>
<br/>

# Exploratory Data Analysis
<br/>
<br/>

## Purchase
<br/>
<br/>
![](Visualizations_files/figure-html/visualizationsData-1.png)<!-- -->  
![](Visualizations_files/figure-html/visualizationsData-2.png)<!-- -->![](Visualizations_files/figure-html/visualizationsData-3.png)<!-- -->![](Visualizations_files/figure-html/visualizationsData-4.png)<!-- -->![](Visualizations_files/figure-html/visualizationsData-5.png)<!-- -->![](Visualizations_files/figure-html/visualizationsData-6.png)<!-- -->
<br/>
<br/>




## Customers
<br/>
<br/>
<br/>
![](Visualizations_files/figure-html/plotsCustomers-1.png)<!-- -->![](Visualizations_files/figure-html/plotsCustomers-2.png)<!-- -->![](Visualizations_files/figure-html/plotsCustomers-3.png)<!-- -->![](Visualizations_files/figure-html/plotsCustomers-4.png)<!-- -->![](Visualizations_files/figure-html/plotsCustomers-5.png)<!-- -->
<br/>


## Products
<br/>
<br/>
<br/>


```
##  [1] "|Product_Category_1 | numberOfProducts| percentage|"
##  [2] "|:------------------|----------------:|----------:|"
##  [3] "|5                  |           148592|  0.2764106|"
##  [4] "|1                  |           138353|  0.2573641|"
##  [5] "|8                  |           112132|  0.2085878|"
##  [6] "|11                 |            23960|  0.0445704|"
##  [7] "|2                  |            23499|  0.0437128|"
##  [8] "|6                  |            20164|  0.0375090|"
##  [9] "|3                  |            19849|  0.0369231|"
## [10] "|4                  |            11567|  0.0215169|"
```

```
##  [1] "|Product_Category_2 | numberOfProducts| percentage|"
##  [2] "|:------------------|----------------:|----------:|"
##  [3] "|NA                 |           166986|  0.3106271|"
##  [4] "|8                  |            63058|  0.1173004|"
##  [5] "|14                 |            54158|  0.1007446|"
##  [6] "|2                  |            48481|  0.0901843|"
##  [7] "|16                 |            42602|  0.0792482|"
##  [8] "|15                 |            37317|  0.0694170|"
##  [9] "|5                  |            25874|  0.0481308|"
## [10] "|4                  |            25225|  0.0469235|"
```

```
##  [1] "|Product_Category_3 | numberOfProducts| percentage|"
##  [2] "|:------------------|----------------:|----------:|"
##  [3] "|NA                 |           382393|  0.7113269|"
##  [4] "|16                 |            32148|  0.0598017|"
##  [5] "|15                 |            27611|  0.0513619|"
##  [6] "|14                 |            18121|  0.0337087|"
##  [7] "|17                 |            16449|  0.0305984|"
##  [8] "|5                  |            16380|  0.0304701|"
##  [9] "|8                  |            12384|  0.0230367|"
## [10] "|9                  |            11414|  0.0212323|"
```

![](Visualizations_files/figure-html/products-1.png)<!-- -->







