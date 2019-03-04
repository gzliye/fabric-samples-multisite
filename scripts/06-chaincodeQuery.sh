#!/bin/bash

echo
echo " ____    _____      _      ____    _____ "
echo "/ ___|  |_   _|    / \    |  _ \  |_   _|"
echo "\___ \    | |     / _ \   | |_) |   | |  "
echo " ___) |   | |    / ___ \  |  _ <    | |  "
echo "|____/    |_|   /_/   \_\ |_| \_\   |_|  "
echo
echo "Build your first network (BYFN) end-to-end test"
echo
CHANNEL_NAME="$1"
PEER="$2"
ORG="$3"
EXPECTED_RESULT="$4"
DELAY="$5"
TIMEOUT="$6"
: ${CHANNEL_NAME:="mychannel"}
: ${PEER:="0"}
: ${ORG:="1"}
: ${EXPECTED_RESULT:="100"}
: ${DELAY:="3"}
: ${TIMEOUT:="10"}
COUNTER=1
MAX_RETRY=10

echo "Channel name : "$CHANNEL_NAME

# import utils
. scripts/utils.sh

# Query chaincode on peer0.org1
echo "Querying chaincode on peer0.org1..."
chaincodeQuery $PEER $ORG $EXPECTED_RESULT

echo
echo "========= All GOOD, Querying chaincode on peer${PEER}.org${ORG} execution completed =========== "
echo

echo
echo " _____   _   _   ____   "
echo "| ____| | \ | | |  _ \  "
echo "|  _|   |  \| | | | | | "
echo "| |___  | |\  | | |_| | "
echo "|_____| |_| \_| |____/  "
echo

exit 0
