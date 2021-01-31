#createStaticIp.sh

#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED createStaticIp.sh ***
***************
'
    echo "An error occurred in createStaticIp.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

clusterName="loadbalancedcluster";
echo "cluster dealing with $clusterName"

# The kubectl context mode is not error proof ?
# ok, so do not mess with the context.
LOADBALANCEDCLUSTER=$(kubectl config get-clusters | grep $clusterName | wc -c)
# TODO: one variable for exists and one for cluster name
echo "Should i create -" $LOADBALANCEDCLUSTER
if [[ LOADBALANCEDCLUSTER -ne 0 ]]; then
	echo "Cluster Exists. Can proceed with creating static ip."${LOADBALANCEDCLUSTER};
	echo "cluster dealing with $clusterName"
	gcloud compute addresses create ingress-static-ip --global --ip-version IPV4
	sleep 60
	gcloud compute addresses describe ingress-static-ip --global 
else
	# DONE: It is now coming here.
	echo "Cluster Does not exit. Need to be created before creating static ip";
fi

#helm init agh..Trouble maker.

trap : 0

echo >&2 '
************
*** DONE createStaticIp ***
************'