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

echo "Step 1/3 recreateCluster"
sh recreateCluster.sh
echo "Step 2/3 installIngress"
sh installIngress.sh
echo "Step 3/3 deployBasicIngress"
sh deployBasicIngress.sh

trap : 0

echo >&2 '
************
*** DONE ingressFromScratch ***
************'