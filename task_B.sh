#!/bin/bash

# 1. From which ip were the most requests?
IPDoesTheMostRequests(){
	echo -n "This IP was the most requests: "
	cat apache_logs.txt | awk '{print $1}' | uniq -c | sort -k 1 -nr | head -1
}

# 2. What is the most requested page?
TheMostRequestedPage(){
	echo ""
}

# 3. How many requests were there from each ip?
HowManyRequestsFromEachIP(){
	echo ""
}

# 4. What non-existent pages were clients referred to?
NonExistentPages(){
	echo ""
}

# 5. What time did site get the most requests?
TimeForTheMostRequests(){
	echo ""
}

# 6. What search bots have accessed the site? (UA + IP)
IsSearchBotsHere(){
	echo ""
}

IPDoesTheMostRequests
TheMostRequestedPage
HowManyRequestsFromEachIP
NonExistentPages
TimeForTheMostRequests
IsSearchBotsHere

