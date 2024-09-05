#!/bin/sh
# Test script used for expression evaluation and loop bound tests

# The script gets one file containing the C code as parameter.
INPUTFILE=$1

# ...add your tests here, exit with zero/non-zero for success/failure...

# E.g. Simply output the files
# Use a temporary file as a counter
# COUNT_FILE="count"
# TEST_DIR="tests"
# mkdir -p tests

# if [ ! -f ${COUNT_FILE} ]; then
#   echo "0" > $COUNT_FILE
# fi
# # Increment counter and echo to file
# exec {counterfd}<$COUNT_FILE
# flock -w 5 "$counterfd"
# COUNTER=$(cat $COUNT_FILE)
# cat $INPUTFILE > $TEST_DIR/test$COUNTER
# COUNTER=$(( COUNTER +1 ))
# echo "$COUNTER" >$COUNT_FILE
# exec {counterfd}<&-

exit 0
