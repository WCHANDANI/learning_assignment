#####1.Rank the cars in terms :
mtcars1

library(dplyr)
mtcars1 %>% mutate(rank=dense_rank((hp))) 
mtcars1 %>% mutate(rank=dense_rank((wt)))
mtcars1 %>% mutate(rank=dense_rank((disp)))
mtcars1 %>% mutate(rank=dense_rank((drat)))
mtcars1 %>% mutate(rank=dense_rank((mpg)))

#####2.Rank the gear's in terms of average mpg
mtcars1 %>% 
  select(car_name,mpg,gear)%>% 
  mutate(Avg=mean(mpg, na.rm=T)) %>%
  mutate(rank=dense_rank((gear)))

###########3.Identify gear wise top 3 cars in terms of :
mtcars1
sqldf("select car_name,max(hp) from mtcars1 group by gear order by max(hp)")
sqldf("select * from mtcars1 where gear = 5 order by hp DESC")
sqldf("select * from mtcars1 where gear = 5 order by hp DESC limit 3")
sqldf("select * from mtcars1 where gear = 4 order by hp DESC limit 3")
sqldf("select * from mtcars1 where gear = 3 order by hp DESC limit 3")
sqldf("select * from mtcars1 where gear = 5 order by wt DESC limit 3")
sqldf("select * from mtcars1 where gear = 4 order by wt DESC limit 3")
sqldf("select * from mtcars1 where gear = 3 order by wt DESC limit 3")
sqldf("select * from mtcars1 where gear = 5 order by disp DESC limit 3")
sqldf("select * from mtcars1 where gear = 4 order by disp DESC limit 3")
sqldf("select * from mtcars1 where gear = 3 order by disp DESC limit 3")
sqldf("select * from mtcars1 where gear = 5 order by drat DESC limit 3")
sqldf("select * from mtcars1 where gear = 4 order by drat DESC limit 3")
sqldf("select * from mtcars1 where gear = 3 order by drat DESC limit 3")
sqldf("select * from mtcars1 where gear = 5 order by mpg DESC limit 3")
sqldf("select * from mtcars1 where gear = 4 order by mpg DESC limit 3")
sqldf("select * from mtcars1 where gear = 3 order by mpg DESC limit 3")
