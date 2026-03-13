Video
Docker for Data Engineering: Postgres, Docker Compose, and Real-World Workflows - Alexey Grigorev

BASH Prompts
# This command will change the prompt username to "> "
1)  echo 'PS1="> "' > ~./bashrc 

# Remove the bashrc to get OG username
2) rm ~/.bashrc

# Can create the same using Nano
3)  nano ~/.bashrc
    export PS1="> "
    export PS1="\u@\h:\w$ " (OG PROMPT USERNAME)

# Version checking
4)  docker --version
    python -V

# Create docker image and run it
5)  docker run -it python:3.13.11-slim
    docker run hello-world
    docker run -it ubuntu

# Show images
    docker images

# Show containers
    docker ps -a

# Delete images
    docker rmi image_name_using_docker_images

# Delete container
    docker rm container_id_using_docker_ps_-a

# Run bash inside an Python image
6)  docker run -it --entrypoint=bash python:3.13.11-slim

# Run python image
7) docker run -it python:3.13.11-slim

# Docker containers are state-less. They don't preserve files
# For an example run this in python image bash
# echo 123 > file (will create a file with 123 string in it)
# cat file (Will print 123 values on terminal as file contains 123)
# exit from bash image session and the enter it again and if you enter cat file then it will show that there is not file/directory like file 

## Above is not entirely true##

# Technically docker creates containers each time we enter into the bash image. So, we can use that container to pull that file
# This is not the pattern in production and should not be followed like it.
# Call docker rm `docker ps -aq` to remove all docker containers

https://www.youtube.com/watch?v=lP8xXebHmuE&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=11
23:00

# Volume mapping -- to use data outside of docker container/image. have host data exposer
-- pwd 
=> provides complete path from the root directory to current directory
==> /workspaces/data-engineering-zoomcamp
8) docker run -it --entrypoint=bash -v $(pwd)/test:/app/test python:3.13.11-slim
=> -v means volume mapping
=> $(pwd) will provide current working directory full path
=> /app/test will map the volumed directory to /app/test directory in container
=> so all data in /workspaces/data-engineering-zoomcamp/test (fileX.txt files and script.py file will be mapped and showned into /app/test and will be accesible to container)

DANGEROUS CODE: rm -rf /
=> Deletes files/folders recursively from root directory
=> basically wipes whole linux file system :D