#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED ingressIpPort.sh ***
***************
'
    echo "An error occurred in ingressIpPort.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

kubectl get ingress basic-ingress

# Maheshs-MBP-3:simple maheshrajannan$ kubectl get ingress
# NAME            HOSTS   ADDRESS          PORTS   AGE
# basic-ingress   *       34.123.155.213   80      15s

ingressIp=""
ingressPort=""
gettingHello=""
while [ -z $ingressIp ]; do
    sleep 60
    ingressIp=`kubectl get ingress basic-ingress --output=jsonpath='{.status.loadBalancer.ingress[0].ip}'`
	ingressPort=80
done

echo "Launching curl http://"$ingressIp":"$ingressPort

# curl "http://"$ingressIp":"$ingressPort

gettingHello=`curl -v --silent "http://"$ingressIp":"$ingressPort"/" 2>&1 | grep Hello | wc -c`

echo "gettingHello: $gettingHello"
echo "When you face this error, The server encountered a temporary error and could not complete your request.<p>Please try again in 30 seconds. Try curl after 30 seconds"
# curl http://34.96.93.69:80 2>&1 | grep Hello
#curl -v --silent https://google.com/ 2>&1 | grep expire

endCheck="";
numRetries=0;

while [ -z $endCheck ]; do
	echo "loopNo-"$numRetries
	echo "gettingHello-"$gettingHello
    if [[ gettingHello -eq 14 ]]; then
    	endCheck="DONE"
    	outputHello=`curl -v --silent "http://"$ingressIp":"$ingressPort"/" 2>&1 | grep Hello`
		echo "We are good:"$outputHello
	else
		echo "OMG. NOT good after retries#"$numRetries
		if [[ numRetries -eq 9 ]]; then
			endCheck="FAILED"
			echo "FAILED after 5 retries"
		else
			numRetries=$((numRetries+1))
			echo "incremented-"$numRetries
		fi 
		echo "sleeping"
		sleep 120
		echo "slept"
		gettingHello=`curl -v --silent "http://"$ingressIp":"$ingressPort"/" 2>&1 | grep Hello | wc -c`
		echo "gettingHello again:"$gettingHello
		#outputHello=`curl -v --silent "http://"$ingressIp":"$ingressPort 2>&1 | grep Hello`
		#echo "outputHello again:"$outputHello
	fi
done

trap : 0

echo >&2 '
************
*** DONE getIngressIpPort.sh ***
************'