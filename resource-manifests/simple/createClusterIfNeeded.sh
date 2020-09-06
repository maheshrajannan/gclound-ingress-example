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

# The kubectl context mode is not error proof ?
# ok, so do not mess with the context.
LOADBALANCEDCLUSTER=$(kubectl config get-clusters | grep loadbalancedcluster | wc -c)
# TODO: one variable for exists and one for cluster name
echo "Should i create -" $LOADBALANCEDCLUSTER
if [[ LOADBALANCEDCLUSTER -ne 0 ]]; then
	echo "Cluster Exists. NO Need to be created."${LOADBALANCEDCLUSTER};
else
	# DONE: It is now coming here.
	echo "Cluster Does not exit. Need to be created.";
	gcloud container clusters create loadbalancedcluster --num-nodes=2
fi

#helm init agh..Trouble maker.

trap : 0

echo >&2 '
************
*** DONE createClusterIfNeeded ***
************'