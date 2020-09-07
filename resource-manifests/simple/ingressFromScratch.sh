#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED ingressFromScratch.sh ***
***************
'
    echo "An error occurred in ingressFromScratch.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

echo "Step 1/2 recreateCluster"
sh recreateCluster.sh
echo "Step 2/2 installIngress"
sh installIngress.sh

trap : 0

echo >&2 '
************
*** DONE ingressFromScratch ***
************'