#!/bin/bash

set -e  # Exit on error

# Source - https://stackoverflow.com/a/74288121
# Needs to be rewritten to handle multipl extensions
BITWARDEN_ID=nngceckbapebfimnlniiiahkandclblb
# Needs to be rewritten to use Brave Origin
EXTENSIONS_PATH=/opt/brave-bin/extensions
sudo mkdir -p $EXTENSIONS_PATH
echo '{ "external_update_url": "https://clients2.google.com/service/update2/crx" }' | sudo tee "${EXTENSIONS_PATH}/${BITWARDEN_ID}.json" > /dev/null
