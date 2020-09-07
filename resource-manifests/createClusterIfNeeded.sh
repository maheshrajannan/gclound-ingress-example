#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED createClusterIfNeeded.sh ***
***************
'
    echo "An error occurred in createClusterIfNeeded.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e
# TODO: this script is broken.
# TODO: Check gCloud has the cluster. If present then delete.
unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_TLS_PATH

LOADBALANCEDCLUSTER=$(kubectl config get-clusters -o name | grep loadbalancedcluster | wc -c)
echo "Should i create -" $LOADBALANCEDCLUSTER
if [[ LOADBALANCEDCLUSTER -ne 0 ]]; then
	echo "Cluster Exists. NO Need to be created."${LOADBALANCEDCLUSTER};
else
	# DONE: It is now coming here.
	echo "Cluster Does not exit. Need to be created.";
	gcloud container clusters create loadbalancedcluster --num-nodes=2
fi

trap : 0

echo >&2 '
************
*** DONE createClusterIfNeeded ***
************'