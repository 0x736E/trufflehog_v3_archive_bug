#!/bin/bash

export TH_VERSION="3.68.0"

# filesystem
docker run -it -v "$PWD:/pwd" ghcr.io/trufflesecurity/trufflehog:${TH_VERSION} --no-update --no-filter-unverified --no-verification --json filesystem /pwd/samples/ > ./results/results_filesystem.json

# git
docker run -it -v "$PWD:/pwd" ghcr.io/trufflesecurity/trufflehog:${TH_VERSION} --no-update --no-filter-unverified --no-verification --json git file:///pwd/samples/ > ./results/results_git.json
