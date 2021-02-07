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

echo "Step 1/4 recreateCluster"
sh recreateCluster.sh

echo "Step 2/4 reInstallHelm"
sh reInstallHelm.sh

echo "Step 3/4 installIngress"
sh installIngress.sh

echo "Step 4/4 deployBasicIngress"
sh deployBasicIngress.sh

trap : 0

echo >&2 '
************
*** DONE ingressFromScratch ***
************'