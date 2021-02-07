#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED recreateCluster.sh ***
***************
'
    echo "An error occurred in recreateCluster.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

echo "Step 1/5 Set asynch flag as FALSE"
export set ASYNC=FALSE;
echo "$ASYNC"

echo "Step 2/5 Cluster is being deleted."
sh deleteClusterIfNeeded.sh

echo "Step 3/5 Cluster is being created."
sh createClusterIfNeeded.sh

trap : 0

echo >&2 '
************
*** DONE recreateCluster.sh ***
************'