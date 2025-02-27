#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# run test files
BATS=${SCRIPT_DIR}/bats/bats-core/bin/bats
INTEGRATION_TEST_FILE=${SCRIPT_DIR}/integration_tests.bats 

CHAIN_NAME=GAIA TRANSFER_CHANNEL_NUMBER=0 $BATS $INTEGRATION_TEST_FILE
CHAIN_NAME=OSMO TRANSFER_CHANNEL_NUMBER=1 $BATS $INTEGRATION_TEST_FILE
CHAIN_NAME=HOST TRANSFER_CHANNEL_NUMBER=2 $BATS $INTEGRATION_TEST_FILE
CHAIN_NAME=COMDEX TRANSFER_CHANNEL_NUMBER=3 $BATS $INTEGRATION_TEST_FILE
