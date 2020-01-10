#!/bin/sh
# Send several requests to our random word generator
echo *INFO* Sending 5 requests to our randowm word generator
i=1;
while [ $i -le 5 ]
do
	curl -i localhost:2020
  	i=$(( $i + 1 ))
done
echo *INFO* Done!
