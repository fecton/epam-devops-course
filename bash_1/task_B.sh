#!/bin/bash

# 1. From which ip were the most requests?
IPDoesTheMostRequests(){
	echo -n "1. This IP was the most requests: "
	cat apache_logs.txt | awk '{print $1}' | uniq -c | sort -k 1 -nr | head -1 | awk '{print $2}'
}

# 2. What is the most requested page?
TheMostRequestedPage(){
	echo -n "2. The most requested page: "
	cat apache_logs.txt | awk '{print $15}' | sed -e 's/+//; s/)"//' | uniq -c | sort -k 1 -nr | head -1 | awk '{print $2}'
}

# 3. How many requests were there from each ip?
HowManyRequestsFromEachIP(){
	echo "3. Request count from each IP:"
	cat apache_logs.txt | awk '{print $1}' | uniq -c
}

# 4. What non-existent pages were clients referred to?
NonExistentPages(){
	echo "4. A list of on-existent pages were clients referred to"
	cat apache_logs.txt | grep "GET /error404" | awk '{print $15}' | sed -e 's/+//; s/)"//'
}

# 5. What time did site get the most requests?
TimeForTheMostRequests(){
	echo -n "5. The most requested site's time: "
	cat apache_logs.txt | awk '{print $4 " " $15}' | sed -e 's/+//; s/)"//; s/\[//' | uniq -c | sort -k 1 -nr | head -1 | awk '{print $2}'
}

# 6. What search bots have accessed the site? (UA + IP)
IsSearchBotsHere(){
	echo "6. List of bots"
	cat apache_logs.txt | awk '{print $1 " " $14}' | sed -e 's/;//' | grep bot | uniq
}

IPDoesTheMostRequests
TheMostRequestedPage
HowManyRequestsFromEachIP
NonExistentPages
TimeForTheMostRequests
IsSearchBotsHere

