# Purpose

This README documents Zander Prinsloo’s (20065124) answers to the Data
Science test on Monday 24 May 2021. It describes how I go about
answering the three questions of the test, and also gives those answers
in the sections below. The sections are appropriately named *Question1*, *Question 2*, and *Question 3*.

Note, however, that there are also sub-folders for each question. These
also have their own projects. Within those folders you will find,
amongst other things, a) pdfs with the answers to the relevant
questions, b) a code folder that contains specific code and functions
used in answering that question. The latter are sourced into this
README.

#### How I Got Started

Here is the code for how I created this folder, specifically the
*20065124.Rproj* and corresponding folders, as well as the
sub-directories for each question.

```{r}
# Create the project - This is all commented out now. 
# LOCATION <- c("/Users/zanderprinsloo/Library/Mobile Documents/com~apple~CloudDocs/Desktop/Desktop – MacBookPro’s MacBook Pro/Academic/Postgraduate/Masters/Modules/Data Science/Test")
# fmxdat::make_project(FilePath = LOCATION, 
#                      ProjNam = "20065124", 
#                      Mac = T)
# # Create Projects for each question including Texevier template
# Texevier::create_template(directory = paste0(LOCATION, "/20065124"), 
#                           template_name = "Question1")
# Texevier::create_template(directory = paste0(LOCATION, "/20065124"), 
#                           template_name = "Question2")
# Texevier::create_template(directory = paste0(LOCATION, "/20065124"), 
#                           template_name = "Question3")
```

# Question 1

This section provides the answers for Question 1. Before answering the question I need to a) do garbage collection, b) load important packages, c) source relevant code from the `Question1/code`. This is done the separate chunks below. 

Garbage Collection:
```{r}
# Garbage Collection
gc()

# Load Packages
if(!require(pacman))(install.packages("pacman")) # in case someone has not installed `pacman`
library(pacman)
p_load(tidyverse, lubridate)

# Source Functions
list.files('Question1/code/', full.names = T, recursive = T) %>% 
    as.list() %>% 
    walk(~source(.))
```

### Data

The data files are not uploaded to GitHub. However, the data is loaded for use in the README below:

```{r}
# Read the data in
df_q1 <- fn_Data_Collate(Datroot = "Question1/Data/!!NAME!!/") %>% 
    as.list() %>% 
    walk(~source(.))
```


### Part 1



### Part 2



# Question 2


### Data and Code

```{r}
# Load Packages
if(!require("pacman")) install.packages("pacman")
library(pacman)
p_load(tidyverse, lubdridate)

# Source Question 1 code
list.files('Question1/code/', full.names = T, recursive = T) %>% 
    as.list() %>%  
    walk(~source(.))
# Source Question 2 code
list.files('Question2/code/', full.names = T, recursive = T) %>% 
    as.list() %>% 
    walk(~source(.))

# Data loading:
    Loc <- "Question2/data/!!NAME!!/"
    df_q2 <- read_rds(glue::glue("{Loc}WineMag.rds"))
    Fruitlist <- read_table("Question2/data/wine/Fruitlist.txt")
```





# Question 3


### Data and Code

```{r}
# Load Packages
if(!require("pacman")) install.packages("pacman")
library(pacman)
p_load(tidyverse, lubdridate)

# Source Question 1 code
list.files('Question1/code/', full.names = T, recursive = T) %>% 
    as.list() %>%  
    walk(~source(.))
# Source Question 2 code
list.files('Question2/code/', full.names = T, recursive = T) %>% 
    as.list() %>% 
    walk(~source(.))
# Source Question 3 code
list.files('Question3/code/', full.names = T, recursive = T) %>% 
    as.list() %>% 
    walk(~source(.))

# Data loading:
    Loc <- "Question3/data/!!NAME!!/"
    df_q2 <- read_rds(glue::glue("Question3/data/!!!NAME!!!.rds"))
    Fruitlist <- read_table("Question2/data/wine/Fruitlist.txt")
```








