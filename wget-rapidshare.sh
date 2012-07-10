#!/bin/bash 
 
rapidshare_cookie=`wget -q -O - \ 
--post-data="sub=getaccountdetails_v1&withcookie=1&login=$1&password=$2" \ 
https://api.rapidshare.com/cgi-bin/rsapi.cgi | grep cookie | cut -d= -f2` 
 
for i in $( cat $3); do 
wget --header="Cookie: enc=$rapidshare_cookie" $i 
done 

