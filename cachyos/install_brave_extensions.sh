#!/bin/bash

set -e  # Exit on error

# Source - https://stackoverflow.com/a/74288121
BITWARDEN_ID=nngceckbapebfimnlniiiahkandclblb
EXTENSIONS_PATH=/opt/brave-bin/extensions
sudo mkdir -p $EXTENSIONS_PATH
echo '{ "external_update_url": "https://clients2.google.com/service/update2/crx" }' | sudo tee "${EXTENSIONS_PATH}/${BITWARDEN_ID}.json" > /dev/null
