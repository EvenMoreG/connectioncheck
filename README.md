# connectcheck
Simple utility to check, monitor and log internet connectivity.

# usage
If a folder `./logs` exists the `result.log` will be written there. Otherwise it will be written in the execution folder.
        # check at random intervals of 0-30 seconds
        ./check.sh
        #check at a fixed interval of 3 seconds
        ./check.sh 3
