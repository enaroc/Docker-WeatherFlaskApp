
# Project:  Containerise a Weather Flask App that Create a Live Wether Forecast Flask App, taking a city name and 
#            returning value like Temperature in C, Temperature in F, Humidity, Wind and many more. 
            

Blog Link - https://machinelearningprojects.net/live-weather-forecast-flask-app/

# Pre-requisites

- A linux system with Python installed (To test app lcoally)
- Docker installed and configured (To containerise application)

# Docker Containers:
# The more apps are introduced in the system, the bigger the attack surface. A single compromised app can easily lead to the downfall of the entire system.
# To solve these issues, we can use Docker containers for software-level sandboxing:
# Apps within the container will have limited access to files.
# Containerized apps can’t see other processes running in the system.
# The container can be allocated a specific amount of hardware resources.
# Network ports of a container aren’t exposed outside.
# Consistent packaging of almost anything across local/production environments.

# This is to list of steps I've taken, Errors I've encountered and solution that I found to fix issues.

# Getting a copy of the project locally
- create a project repo locally
- create a dedicated directory inside our project repo
- mkdir <directoryname>
- cd <directoryname>
- clone the project 
    git clone https://github.com/sharmaji27/Weather-Flask-App.git
    git init

# Step 1: Understanding what you are trying to achieve and create a workflow
# Failing to do this and working direcly on containerising the application has generated issues when attempting to run our docker container

# Step 2: Docker container exited within second and would not start Looking at the code in this case app.py and go through it to udnerstand what   it's doing and if any credentials are needed
# This step was crucial as I failing to read through the code first that I was trying to run a program that doesn't have a valid  API-Key and API-Host

# Step 3: Importing the required Libraries 
         (This was an issue as without it I was not successful in running my code locally
         On teh terminal I entered the following command)
         import json
         import requets
         from fdpf import fdpf
         from flask import Flas,request,render_template

# Step 4: Generate an API-KEY and API-host and links from RapidAPI.
        (Create an account on RapidAPI, suscribe to test and subscribe to the basic plan which is free and search WeatherAPI.com)
        Copy API_KEY, API_HOST, API_URL and replace in the flask app.

# Step 5: Define the route functions for the love weather Forecast Flask App
         (In this project the source code was provided. Read through it to understand what it does.)

# Step 6: Test the application Locally 

# Create an Image and deploy it in dummy production environment.

# Step 7: Write Dockerfile to containerise application
          (Import the libraries in your image and Install requirement.txt 
          In app.py replace (debug=True) with (host='0.0.0.0' so you can access it on the browser))
          Here are the docker command you can run:
          docker build -t <filename> .
          docker images (to view you image)
          docker run -d -it -p 5000:5000 --name <containername> <filename>
          docker ps (to view running containers)
          docker exec -it <containerID> sh