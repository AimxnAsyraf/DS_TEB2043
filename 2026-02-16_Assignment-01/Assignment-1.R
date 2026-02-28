library(tidyverse)
library(janitor)
library(lubridate)
library(readr)

#Read all lines from uncleaned dataset
row_data <- read_lines("Unclean Dataset.csv")

#Replace comma, hidden spaces and remove empty lines
fixed_lines <- row_data %>%
  str_replace_all("\\|", ",") %>%
  str_remove_all(",+\\s*$")

#Take lines that only has values
fixed_lines <- fixed_lines[fixed_lines != ""]

#Read te corrected data into a dataframe
dataFrame <- read_csv(paste(fixed_lines, collapse = "\n"), na = c("", "NA", "N/A"))
# print(dataFrame)

#Standardize headers and trim whitespace
clean_dataFrame <- dataFrame %>%
  clean_names() %>%
  mutate(across(where(is.character), str_trim))

#Format into correct data type such as double and date
clean_dataFrame <- clean_dataFrame %>%
  mutate(
    total_payments = parse_number(total_payments),
    enrollment_date = parse_date_time(enrollment_date, orders = c("ymd", "dmy", "mdy")),
    enrollment_date = as.Date(enrollment_date)  
  )

#Fix inconsistent values or typo errors
clean_dataFrame <- clean_dataFrame %>%
  mutate(
    course = case_when(
      course == "Machine Learnin" ~ "Machine Learning",
      course == "Web Developmen" ~ "Web Development",
      course == "Data Analysis" ~ "Data Analyst",
      TRUE ~ course
    )
  )

#Remove duplicate values
clean_dataFrame <- clean_dataFrame %>%
  distinct()

clean_dataFrame <- clean_dataFrame %>%
  #Keep only the rows that has a valid number
  filter(str_detect(student_id, "^[0-9]+$")) %>%
  
  #Fix the mixed value between student id and total payments
  mutate(
    payment_str = as.character(total_payments),
    id_str = as.character(student_id),
    
    total_payments = case_when(
      str_ends(payment_str, id_str) & str_length(payment_str) > str_length(id_str) ~ 
        str_remove(payment_str, paste0(id_str, "$")),
      TRUE ~ payment_str
    ),
    
    #Convert total payment back to numeric
    total_payments = as.numeric(total_payments)
  ) %>%
  
  
  select(-payment_str, -id_str) %>%
  
  mutate(
    last_name = replace_na(last_name, "Unknown")
  ) %>%
  
  drop_na(enrollment_date)

cat("Total clean rows remaining:", nrow(clean_dataFrame), "\n")
print(clean_dataFrame, n = 57)

write.csv(clean_dataFrame, "Cleaned_Dataset.csv", row.names = FALSE)