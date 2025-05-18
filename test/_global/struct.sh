#!/bin/bash

# The 'test/_global' folder is a special test folder that is not tied to a single feature.
# This test file is executed against a running container constructed
# from the value of 'struct' in the tests/_global/scenarios.json file.
#
# The value of a scenarios element is any properties available in the 'devcontainer.json'.
# Scenarios are useful for testing specific options in a feature, or to test a combination of features.
#
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test --global-scenarios-only .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

echo -e "The result of 'python -m struct --help' will be:\n"
python -m struct --help || true

echo -e "The result of 'pip show struct' will be:\n"
pip show struct || true

# Feature-specific tests
check "struct module is installed" bash -c "pip show struct | grep 'Name: struct'"
check "struct CLI is available" bash -c "python -m struct --help | grep 'usage:'"

# Report result
reportResults
