library(tidyverse)

head(mpg)

str(mpg)

mpg %>%
  select(manufacturer)

mpg %>%
  distinct(manufacturer)

mpg %>%
  filter(manufacturer == "honda")

mpg %>%
  filter(manufacturer == "honda" | manufacturer == "toyota")

mpg %>%
  filter(manufacturer == "honda" & year == "1999")

mpg %>%
  filter(manufacturer == "honda" & year == "1999") %>%
  select(manufacturer,year,cty,hwy)

mpg %>%
  distinct(manufacturer) %>%
  count()

mpg %>%
  manufacturer %>% 
  manufacturer == str_to_title %>% 
  mutate
mpg %>%
  mutate(manufacturer == str_to_title(manufacturer))
mpg %>%
  mutate(manufacturer = str_to_title(manufacturer), model = str_to_title(model))

mpg %>%
  mutate(manufacturer = str_to_title(manufacturer), model = str_to_title(model), year = str_to_title(year), trans = str_to_title(trans), hwy = str_to_title(hwy))

mpg %>%
  mutate(manufacturer = str_to_title(manufacturer), model = str_to_title(model)) %>%
  select(manufacturer, model, year, trans, hwy)

my_messy_data <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/my_data.csv")

head(my_messy_data)

my_messy_data %>%
  mutate(condition = recode(condition,
                            "1" = "PrimeA_TargetA",
                            "2" = "PrimeA_TargerB",
                            "3" = "PrimeB_TargetA",
                            "4" = "PrimeB_TargetB")) %>%
  head()

my_messy_data %>%
  mutate(condition = recode(condition,
                             "1" = "PrimeA_TargetA",
                             "2" = "PrimeA_TargetB",
                             "3" = "PrimeB_TaegetA",
                             "4" = "PrimeB_TargetB")) %>%
  separate(col = "condition", into = c("Prime", "Target"), sep = "_")


