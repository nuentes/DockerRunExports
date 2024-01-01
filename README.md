What does this this script do?
Summary: It reverse-engineers the Docker Run commands for all of your Docker containers, and saves them to text files.

Details:
1) It pulls a list of all of your docker containers, and puts the list of container names into a file named "all_containers.txt". 
2) Then it searches the root path for a Docker Container with the same name as the container. If one exists, it simply appends the date and then the Docker Run command. If it doesn't exist, it will create the file and then append the same info.
3) The script never removes data from the txt file, so you can check for any changes to your Run scripts in the past.

How to set it up:
1) Set the root path in the script (where do you want to save all of the scripts)
2) Create a cron job to run the script whenever you want
