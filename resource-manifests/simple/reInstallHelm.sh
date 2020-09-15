  #!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED reInstallHelm.sh ***
***************
'
    echo "An error occurred in installIngress.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

echo "Step 1/3 Un-installing helm"
brew uninstall helm@2
echo "Step 2/3 Re-installing helm"
brew install helm@2
echo "Step 3/3 force overwrite helm links"
brew link --overwrite --force helm@2


trap : 0

echo >&2 '
************
*** DONE reInstallHelm ***
************'