# Install and setup OS
FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y sudo 

# Install Java
RUN sudo apt-get update
RUN sudo apt install -y --no-install-recommends openjdk-17-jdk-headless
COPY ./agent.jar ./home

# Install tools
RUN sudo apt install -y git
RUN sudo apt install -y maven
