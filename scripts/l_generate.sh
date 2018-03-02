#!/bin/bash

cd ../smtlearn

declare -a options=(1 2 3 4 5)

for i in "${options[@]}"; do
    python api.py generate ../synthetic/ll/$i -n 100 -b 0 -r 2 -k 3 -l $i --half_spaces 10
done
wait

scp -r ../synthetic/ll samuelk@himec04.cs.kuleuven.be:/home/samuelk/projects/smtlearn/synthetic/