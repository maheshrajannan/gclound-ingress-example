#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED deleteClusterIfNeeded.sh ***
***************
'
    echo "An error occurred in deleteClusterIfNeeded.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e
# TODO: this script is broken.
# TODO: Check gCloud has the cluster. If present then delete.
unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_TLS_PATH
# INFO: https://stackoverflow.com/questions/30604846/docker-error-no-space-left-on-device
echo "INFO: Docker system pruning to save space:"
docker system prune -f

clusterName="loadbalancedcluster";
echo "cluster dealing with $clusterName"

# TODO: change to get-clusters instead of get-contexts, they are 2 different things.
LOADBALANCEDCLUSTER_EXIST=$(kubectl config get-clusters | grep ${clusterName} | wc -c)
echo "Do clusters exist?-" $LOADBALANCEDCLUSTER_EXIST
if [[ LOADBALANCEDCLUSTER_EXIST -ne 0 ]]; then
	LOADBALANCEDCLUSTER=`kubectl config get-clusters | grep ${clusterName}`
	# gke_translator-258700_us-central1-f_translator3
	echo "The cluster to be deleted is :"$LOADBALANCEDCLUSTER
	kubectl config delete-cluster $LOADBALANCEDCLUSTER
	# I think helm does not like deleting the context.
	# echo "Deleted the cluster :"$LOADBALANCEDCLUSTER
	# kubectl config delete-context $LOADBALANCEDCLUSTER
	# echo "Deleted the cluster context:"$LOADBALANCEDCLUSTER
	if [ "$ASYNC" == "FALSE" ]; then
		echo "deleting cluster synchronously"
		echo "Y" | gcloud container clusters delete ${clusterName}
	else
		gcloud container clusters delete ${clusterName} -q --async
		echo "deletion of gcloud cluster is in progress...in background."
	fi

else
	echo "No clusters to delete"
fi

trap : 0

echo >&2 '
************
*** DONE deleteClusterIfNeeded ***
************'