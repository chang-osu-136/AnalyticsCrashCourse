#Read in the data using import data
???

View(popular_names)
View(births_by_decade)

#Installing the packages we need
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")

library(readr)
library(ggplot2)
library(dplyr)
library(tidyverse)

#Making a barplot in 2010 top 5 names of boys and girls


twenty_10 = popular_names %>% filter(Decade == ??)
View(twenty_10)
twenty_10 = twenty_10 %>% filter(Rank<=??)
View(twenty_10)


#But we can combine
twenty_ten = popular_names %>% filter(Decade == ??) %>% filter(Rank<=??)
View(twenty_ten)


#Now, let's make a graph
t10_graph = ggplot(data=twenty_ten, aes(x=name, y = count))+
geom_bar(stat = "identity") +
xlab("Names")+
ggtitle("Top 10 Names in 2010 Decade")

t10_graph


#Making a line graph of name density

#Filtering with the data
pop_names_w_freq =  right_join(popular_names, births_by_decade, by = "Decade")

f_names = pop_names_w_freq %>% filter(gender == "f")
m_names = pop_names_w_freq %>% filter(gender == "m")

#mutate function
f_names = f_names %>% mutate(name_freq = ??)
m_names = m_names %>% mutate(name_freq = ??)

#filtering again so we have JUST the top names
ftop_names = f_names %>% filter(??)
mtop_names = m_names %>% filter(??)
View(ftop_names)
View(mtop_names)

#male births over time
#let's graph it together
birth_graph_m = ggplot(data = m_names, aes(x=Decade, y = m_births))
birth_graph_m

birth_graph_m = ggplot(data = m_names, aes(x=Decade, y = m_births))+
  geom_line(color = "lightblue",size = 1.5)
birth_graph_m

birth_graph_m = ggplot(data = m_names, aes(x=Decade, y = m_births))+
  geom_line(color = "lightblue",size = 1.5)+
  geom_point(color = "lightblue",size = 3)+
  ggtitle("Number of Male Births Per Decade")
birth_graph_m

#Fill in the female graph like we did for the male graph
birth_graph_f = 

birth_graph_f


#Examing the frequency of names over time

mname_count_graph = ggplot(data = ??, aes(x=??, y = ??))+
  geom_line(color = "lightblue",size = 1.5)+
  geom_point(color = "lightblue",size = 3)+
  geom_text(aes(label=???),hjust=0.5, vjust=0.5, check_overlap = TRUE)+
  ggtitle("Frequency of Top Male Names Per Decade")
mname_count_graph 

#female top name frequency
fname_count_graph = ggplot(data = ftop_names, aes(x=??, y = count))+
  geom_line(color = "lightpink",size = 1.5)+
  geom_point(color = "lightpink",size = 3)+
  geom_text(aes(label=??),hjust=0.5, vjust=0, check_overlap = TRUE)+
  ggtitle("Frequency of Top Female Names Per Decade")
fname_count_graph 



#Two lines in one graph
name_freq_graph = ggplot(mtop_names, aes(x=Decade, y = name_freq))+
  geom_line(color = "lightblue", size = 1.5)+
  geom_line(y=??, color = ??, size = ??)+
  ggtitle("Popualtion Share of Top Name Over Time")
name_freq_graph 


