library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)
library(plotly)

## Arrangement of the dataset
death <- read.csv("../data/death_data.csv")
america_death <- death %>% 
  filter(WHO.region == "Americas") %>% 
  mutate(Year = as.character(Year)) %>% 
  arrange(Year) %>% 
  mutate(Number.of.deaths.due.to.HIV.AIDS = gsub("\\[.*" ,"",america_death$Number.of.deaths.due.to.HIV.AIDS)) %>% 
  mutate(Number.of.deaths.due.to.HIV.AIDS = gsub(" " ,"",america_death$Number.of.deaths.due.to.HIV.AIDS))

lives <- read.csv("../data/data-2.csv", header = T)
colnames(lives) <- lives[1,]
lives <- lives[-1,]
america_lives <- lives %>%
  gather(key = Year, 
         value = living_with_hiv,
         -`WHO region`) %>% 
  filter(`WHO region` == "Americas") %>% 
  mutate(living_with_hiv = gsub("\\[.*" ,"",america_lives$living_with_hiv)) %>% 
  mutate(living_with_hiv = gsub(" " ,"",america_lives$living_with_hiv)) %>% 
  arrange(Year) 

data <- left_join(america_lives, america_death, by = "Year") %>% 
  select(-WHO.region)

## Testing code for two plot that will show in the interactive page 
ggplot(data, aes(x = Year, y = as.numeric(living_with_hiv))) +
  geom_point() +
  scale_x_discrete(
    breaks = c("1990", "2000", "2010", "2020")
  ) +
  xlab("Year") + ylab("Number of people") +
  labs(title = "Number of people living or dead with hiv")

ggplot(data, aes(x = Year, y = as.numeric(Number.of.deaths.due.to.HIV.AIDS))) +
  geom_point() +
  scale_x_discrete(
    breaks = c("1990", "2000", "2010", "2020")
  ) +
  xlab("Year") + ylab("Number of people") +
  labs(title = "Number of people living or dead with hiv")


