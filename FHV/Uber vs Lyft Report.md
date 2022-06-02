
<h1><b> Uber vs. Lyft In NYC During COVID </b></h1>
<h5> Ziqi Polimeros</h5>
<h5> May 2022 </h5>



!["FHV"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/Uber-Lyft.jpg?raw=true)
<br>



<h2> Introduction </h2> 

In the United States the two most popular online ride-hailing companies are Uber and Lyft. Lyft offers both cars and bike rentals, as well as ride-hailing; its business is currently growing in two countries.[1] Uber has established a global presence, thriving in around 70 countries. Its services extend from online ride-hailing to car rental to food and grocery delivery.[2] Both companies are highly profitable. The two companies have grown from startups to unicorns in a few years and then went public in 2019. Uber hit the Fortune 500 in 2020, ranking 228th place.[3]

What makes online ride-hailing services popular? 
First, transparency of prices and information improves customer satisfaction. Using Uber or Lyft mobile apps, you can choose a price option and grade of service before your trip. In a traditional taxi ride, you never know the price beforehand. Especially if you are a stranger to the city, divers can take advantage of that by taking a longer route to charge more money. You also can access the driver's information and read reviews to ascertain. After the ride you can write your own review of the driver to let people know if the driver is a good bet or not. That's not an option for traditional taxi customers. 
Second, the flexibility of hailing a ride anywhere and anytime optimizes rider's experience. With the mobile apps, you can see where your Uber or Lyft car is and when they will arrive. You can wait for your car that you reserved online in your place instead of getting to a main thorough air looking for a taxi on a street. Some public transportation and taxi companies don't run 24 hours a day. But people still can travel late at night with online ride-hailing services when there's no other options. 
Third, online ride-hailing is safer for both customers and drivers. Being a driver, you must meet certain criteria. Drivers are required to submit DMV driving record checks, and be fingerprinted for criminal background checks and drug testing.[4] Customers can enjoy their trips with less worry and stress. As customers pay with their apps rather than with cash, drivers would not likely be targeted for robbery.

How was the business of online ride-hailing in 2020 during the coronavirus pandemic? During lockdown, restaurants, theaters, and tourist attractions were shut down. Even all students couldn't go to class and had to take online courses. Air travel was suspended for a while as well. If people couldn't travel in the city or out of the city, how did the online ride-hailing industry survive? In this project, we analyzed Uber and Lyft annual reports and NYC 2020 High Volume FHV Trip Records. We focused on the following questions:

<li>
How many customers, trips and revenue did Uber and Lyft have?
</li>
<li>
How did Uber and Lyft perform in monthly, hourly and weekdays in 2020?
</li>
<li>
What were the popular pick up and drop off locations in 2020?
</li>


<h2> Data Sources And Feature Engineering</h2>
<li>
<a href="https://investor.lyft.com/financials-and-reports/annual-reports/default.aspx">Lyft Annual Report</a>
</li>
<li>
<a href="https://investor.uber.com/financials/default.aspx">Uber Annual Report</a>
</li>
The annual reports were from Lyft and Uber websites. We combined Lyft and Uber trips, active riders, and revenue data from 2016 to 2021. In this combined dataset, there are twelve observations and three features. Two pieces of data are missing. Lyft didn't share the record of their annual trips in 2020 and 2021 with the public. 

<li>
<a href="https://data.cityofnewyork.us/Transportation/2020-High-Volume-FHV-Trip-Records/yrt9-58g8">2020 High Volume FHV Trip Records</a>
</li>

This dataset is from a website called NYC Open Data. This is a huge dataset of over 9 GB with eight features, and over 140 million observations. Due to its massive size, we couldn't analyze it as a single dataset. We had to break it into fourteen datasets. But it still took a long time to analyze one single subset which was about one gigabyte. In these subsets, we generated six new features, year, month, weekdays, hour, time and trip duration.

<li>
<a href="https://www1.nyc.gov/assets/tlc/downloads/pdf/find_a_ride.pdf">A Listing of TLC Licensed Bases</a>
</li>

This dataset is from the website, NYC.gov. The dataset helped us to differentiate which trips were from Uber or Lyft. We also removed all the observations of another ride-hailing company named Via.

<li>
<a href="https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv">Taxi Zone Lookup Table</a>
</li>
<li>
<a href="https://data.cityofnewyork.us/Transportation/NYC-Taxi-Zones/d3c5-ddgc">NYC Taxi Zones</a>
</li>

These two datasets were from websites called NYC Open Data and NYC.gov. With these two datasets, we were able to analyze the pickup and drop off locations and their geographic coordinates.

<h2> Data Analysis: The Big Picture </h2> 

A traditional taxi company makes money from selling or renting taxi caps and medallions. In New York City a taxi medallion right now is about $100,000, but in 2014 it surged to its highest price, over $1 million.[6] In contrast, the three-year permit for Uber or Lyft drivers only costs around $700.[4] The source of revenue for Lyft or Uber is the company's commission on each trip.

!["trips"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/Trips.png?raw=true)
<br>

<b>Discussion 1. </b> 

The number of trips for Lyft was growing exponentially. As mentioned earlier we don't have the information of 2020 and 2021, but the trend should be similar to Active Riders and Total Revenue below. In 2020 the amount of Uber trips plummeted. In 2021 it rebounded strongly, though it still was not at the level it had attained in 2019. 

!["riders"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/Active%20Riders.png?raw=true)
<br>

<b>Discussion 2. </b>

In 2020, the percentage of active riders using Lyft decreased much more than Uber's, but in 2021 the percentage of user increased more than Uber's. Uber's active riders in 2021 was a little bit more than 2019's.


!["revenue"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/Revenue.png?raw=true)
<br>

<b>Discussion 3. </b>

The trend of Revenue was similar to Active Rider's, but Uber's revenue in 2021 stood out by increasing about 60%. Compared to active riders and trips, other aspects of Uber's business, such as car rental, food delivery or grocery delivery grew much faster.


<h2> Data Analysis: Lyft And Uber In NYC During COVID Pandemic </h2> 

The first outbreak of COVID was in China in 2019. In the United States, the president declared a state of national emergency because of COVID begun in March 2020. New York City begun the process of shutting down from March.[7]

!["monthly"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/monthly.png?raw=true)
<br>


<b>Discussion 4. </b>

Uber's number of monthly trips were almost three times that of Lyft's, but the trends of Lyft and Uber were similar, reflected the impact of lockdowns in 2020. New York City started shutting down on March 16th. That was followed by the stay-at-home order. In April the governor extended stay-at-home order and his PAUSE order.[7] 
From the graph, we can see the number of trips started to go down in March; they plunged even further in April and reached the lowest point. In May the number of trips slowly rebounded, because New York City began reopening phase one and two. After phase three and four reopening, the number of trips peaked in October, hitting a number of March's level. Then we had a COVID resurgence. Even without a stay-at-home order, some people opted to stay home, though some still went out. The number of trips fell in November and December, but still, much higher than April's level. 






!["weekdays"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/weekdays.png?raw=true)
<br>

<b>Discussion 5. </b>

Uber and Lyft share the same trend in this graph. Peak days of a week were on Friday and Saturday, while the minimum trip duration were on Monday and Sunday. 


!["hourly"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/hourly.png?raw=true)
<br>

<b>Discussion 6. </b>

The most productive time of day were around 8 am and 5pm. The least productive times were from 3am to 4am and again at 10am. 

!["pickup"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/pickUp.png?raw=true)

<br>


!["pickup"](https://github.com/ZiqiPolimeros/Uber-vs.-Lyft/blob/main/pictures/dropOff.png?raw=true)
<br>

<b>Discussion 7. </b>

The top five pickup and drop off locations were similar. They were JFK airport, LaGuardia airport, Crown Heights North, Bushwick South, East New York or East Village.



<h2> Summary </h2>
In the last ten years, the U.S. GDP growth rate was around 2%, but in 2020 it was negative 3.49%. You can tell that 2020 was a tough year with quarantine and shutting down. Uber and Lyft in the transportation industry, got hit very hard by COVID. However, the two companies both rebounded strongly in 2021. Compared to about 100,000 businesses that were closed due to COVID,[8] Uber and Lyft demonstrated a strong ability to rebound and recover from adversity.




 
<h2> References</h2>

[1] <a href="https://www.lyft.com/">Lyft</a>

[2] <a href="https://backlinko.com/uber-users">Uber</a>

[3] <a href="https://en.wikipedia.org/wiki/List_of_Fortune_500_computer_software_and_information_companies">wikipedia</a>

[4] <a href="https://www1.nyc.gov/site/tlc/drivers/get-a-tlc-drivers-license.page">NYC</a>

[5] <a href="https://www.federalreserve.gov/econres/feds/files/2020089r1pap.pdf">Federal Reserve</a>

[6] <a href="https://documentedny.com/2021/11/23/taxi-cab-medallion-explained/#:~:text=The%20value%20of%20medallions%20soared,medallions%20are%20a%20meager%20%2480%2C000.">Documented</a>

[7] <a href="https://www.investopedia.com/historical-timeline-of-covid-19-in-new-york-city-5071986">Investopedia</a>

[8] <a href="https://www.macrotrends.net/countries/USA/united-states/gdp-growth-rate">Investopedia</a>

[9] <a href="https://fortune.com/2020/09/28/covid-buisnesses-shut-down-closed/">Fortune</a>

