# Use an official Python runtime as a base image
FROM python:2.7.13

# Set the working directory to /app
WORKDIR /app

# Install any needed packages
RUN pip install ansible
RUN apt-get update && apt-get install -y sshpass

# Copy the current directory contents into the container at /app
ADD . /app

