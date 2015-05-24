---
title       : Climate change (1984 - 2008)
subtitle    : Atmospheric concentrations of gas
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Description

The data set climate_change.csv contains atmospheric concentration data of C02, CH4 and N2O in mmpv from 1984-2008. We built an interactive interface where use can select the gas and starting year for a bar plot that displays the concentration levels throughout the years.

--- .

## Data Set
Example of data file

```r
data <- read.csv("climate_change.csv", sep=",", header=T)
```

```
## Warning in file(file, "rt"): cannot open file 'climate_change.csv': No such
## file or directory
```

```
## Error in file(file, "rt"): cannot open the connection
```

```r
head(data,10)
```

```
##                                                                            
## 1  function (..., list = character(), package = NULL, lib.loc = NULL,      
## 2      verbose = getOption("verbose"), envir = .GlobalEnv)                 
## 3  {                                                                       
## 4      fileExt <- function(x) {                                            
## 5          db <- grepl("\\\\.[^.]+\\\\.(gz|bz2|xz)$", x)                   
## 6          ans <- sub(".*\\\\.", "", x)                                    
## 7          ans[db] <- sub(".*\\\\.([^.]+\\\\.)(gz|bz2|xz)$", "\\\\1\\\\2", 
## 8              x[db])                                                      
## 9          ans                                                             
## 10     }
```

--- .
## 

