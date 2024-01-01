#!/bin/bash

root_path="/mnt/docker_data/docker_runs"
timestamp=$(date +"%m-%d-%y")

#get list of containers and add to text file
docker container ls -a --format "table {{.Names}}" > $root_path/all_containers.txt


#Loop through the containers, skipping line 1
sed -e 1d $root_path/all_containers.txt | while read p
do
  #actually get the run file
  tempdata=$(docker run --rm -v /var/run/docker.sock:/var/run/docker.sock assaflavie/runlike $p)
  #send run files to txt files
  echo ${timestamp} >> $root_path/$p.txt
  echo "${tempdata//' --'/' \'$'\n''  --'}" >> $root_path/$p.txt
  echo >> $root_path/$p.txt
  echo >> $root_path/$p.txt
  echo >> $root_path/$p.txt
done
