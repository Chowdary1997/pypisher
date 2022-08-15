# Dockerfile

# Author       : Raja
# Github       : https://github.com/Chowdary1997
# Email        : rajendra.daggubati1997@gmail.com
# Date         : 25-08-2021
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:latest
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/Chowdary1997/pypisher.git"

# Working directory
WORKDIR PyPhisher/
# Add files 
ADD . /PyPhisher

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install php -y
RUN pip3 install requests bs4
RUN apt-get clean

# Main command
CMD ["python3", "pyphisher.py", "--noupdate"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t raja/pyphisher:latest", "sudo docker run --rm -it Raja/pyphisher:latest"

## "sudo docker pull raja/pyphisher", "sudo docker run --rm -it raja/pyphisher"
