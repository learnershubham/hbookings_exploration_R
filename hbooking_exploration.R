# data exploration of (hbookings) data having 119390 obs. of 32 variable
hbookings  <- read.csv("E:/google data/R-programming/_hotel_bookings.csv")
summary(hbookings)
# changing  country,market_segment, distribution_channel,reserved_room_type,customer_type,
# assigned_room_type column,agent,reserved_room_type,company, arrival_date_month,hotel,arrival_date_year,reservation_status  in hbookings AS a Factor
hbookings$country <- factor(hbookings$country)
hbookings$market_segment <- factor(hbookings$market_segment)
hbookings$distribution_channel <- factor(hbookings$distribution_channel)
hbookings$customer_type <- factor(hbookings$customer_type)
hbookings$assigned_room_type <- factor(hbookings$assigned_room_type)
hbookings$agent <- factor(hbookings$agent)
hbookings$reserved_room_type  <- factor(hbookings$reserved_room_type )
hbookings$company  <- factor(hbookings$company )
hbookings$hotel <- factor(hbookings$hotel)
hbookings$arrival_date_month <- factor(hbookings$arrival_date_month)
hbookings$arrival_date_year<-factor(hbookings$arrival_date_year)
hbookings$reservation_status<-factor(hbookings$reservation_status)
hbookings$reservation_status_date <- as.character(hbookings$reservation_status_date)
summary(hbookings)
# checking for any missing values in the columns of the dataset
install.packages("Hmisc")
library(Hmisc)
describe(hbookings)
# No missing Values found
# proceed with further exploration of data
# looking data for the year- 2015 
library(dplyr)
hbookings_2015 <-hbookings %>% filter(arrival_date_year==2015) %>% filter(reservation_status=="Check-Out") 
summary(hbookings_2015)
## from all the booking in the year 2015 only 13854 people comes in & checked out,october becomes most productive month with arrival of 3225 guest,Portugal is the country from 
## where most traffic comes, from intial analysis, special attention should be given from the guest coming from portugal(5725),market_segment Online TA provide most guest 4520,
##direct distribution channel medium used by 2286 guests,transient guest constitute 7262 guests.

hbookings_2015_canceled <-hbookings %>% filter(arrival_date_year==2015) %>% filter(reservation_status=="Canceled")
summary(hbookings_2015_canceled)
## from all the booking in the year 2015 7951 guest canceled their bookings
# september becomes the month in which most booking Canceled 2056
# most canceled bookings comes from portugal 7401
# market_segment group contribute most Canceled bookings  3832
#TA/TO segment contributes towards most canceled bookings with 7163 Canceled bookings

# looking data for the year- 2016
hbooings_2016 <- hbookings %>% filter(arrival_date_year==2016) %>% filter(reservation_status=="Check-Out") 
summary(hbooings_2016)
## from all the booking in the year 2016 only 36370 people comes in & checked out,october becomes most productive month with arrival of 3689 guest,Portugal is the country from 
## where most traffic comes, from intial analysis, special attention should be given from the guest coming from portugal(9916),market_segment Online TA provide most guest 17824,
##direct distribution channel medium used by 5631 guests,transient guest constitute 26668 guests.

hbookings_2016_canceled <-hbookings %>% filter(arrival_date_year==2016) %>% filter(reservation_status=="Canceled")
summary(hbookings_2016_canceled)
## from all the booking in the year 2016 19669 guest canceled their bookings
# october becomes the month in which most booking Canceled 2459
# most canceled bookings comes from portugal 12054
# market_segment online ta contribute most Canceled bookings  9477
#TA/TO segment contributes towards most canceled bookings with 18035 Canceled bookings

# looking data for the year - 2017
hbookings_2017 <- hbookings %>% filter(arrival_date_year==2017) %>% filter(reservation_status=="Check-Out")
summary(hbookings_2017)
## from all the booking in the year 2017 only 24942 people comes in & checked out,may becomes most productive month with arrival of 3551 guest,Portugal is the country from 
## where most traffic comes, from intial analysis, special attention should be given from the guest coming from portugal(5430),market_segment Online TA provide most guest 13394,
##direct distribution channel medium used by 4171 guests,transient guest constitute 19169 guests.
hbookings_2017_canceled <-hbookings %>% filter(arrival_date_year==2017) %>% filter(reservation_status=="Canceled")
summary(hbookings_2017_canceled)
## from all the booking in the year 2017 15397 guest canceled their bookings
# may becomes the month in which most booking Canceled 2695
# most canceled bookings comes from portugal 7301
# market_segment online ta contribute most Canceled bookings  9098
#TA/TO segment contributes towards most canceled bookings with 14070 Canceled bookings