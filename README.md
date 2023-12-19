
# Project:  Containerise a Weather Flask App 

This project create a Live Wether Forecast Flask App, taking a city name and returning value like Temperature in C, Temperature in F, Humidity, Wind and many more. 

The project comes with the source code and we wrote a custom Dockerfile to contianerise the application.
            

Blog Link - https://machinelearningprojects.net/live-weather-forecast-flask-app/

# Pre-requisites:

- A linux system with Python installed (To test app lcoally)
- Docker installed and configured (To containerise application)

# Docker Containers:
The more application that are introduced in a system, the bigger the attack surface. A single compromised application can easily lead to the downfall of the entire system. To solve these issues, we can use Docker containers for software-level sandboxing:
- Applications within the container will have limited access to files.
- Containerized application can’t see other processes running in the system.
- The container can be allocated a specific amount of hardware resources.
- Network ports of a container aren’t exposed outside.
- Consistent packaging of almost anything across local/production environments.

# Deploying Weather Flask App 

- Step 1: Create a new project directory

(On you local machine)

    mkdir <directoryname>
    
    cd <directoryname>

- Step 2: Clone the project

(Import a copy of the project locally)

    git clone https://github.com/sharmaji27/Weather-Flask-App.git
    
    git init


IMPORTANT NOTE: 

Understanding what you are trying to achieve and create a workflow
Learning from previous mistakes I attempt to run the project locally before containerising the application. 

Example:

My Docker container exited within second and would not start Looking at the code in this case app.py and go through it to udnerstand what   it's doing and if any credentials are needed
This step was crucial as I failing to read through the code first that I was trying to run a program that doesn't have a valid  API-Key and API-Host

- Step 3: Importing the required Libraries 

(This was an issue in the existing code that needed to be fixed as I was not successful in running my code locally. To fix it i entered the following commands on the terminal).

    import json

    import requets

    from fdpf import fdpf

    from flask import Flas,request,render_template

- Step 4: Generate an API-KEY and API-host and links from RapidAPI.

Create an account on RapidAPI, suscribe to test and subscribe to the basic plan which is free and search WeatherAPI.com

Copy the following  API_KEY, API_HOST, API_URL and replace the values  in the app.py file.

- Step 5: Define the route functions for the love weather Forecast Flask App

In this project the source code was provided. Read through it to understand what it does.

- Step 6: Test the application Locally 


- Step 7: Write Dockerfile to containerise application.

Import the libraries in your image and Install requirement.txt . In app.py replace (debug=True) with (host='0.0.0.0' so you can access it on the browser)

Here are the docker command you can run:

    docker build -t <filename> .

    docker images (to view you image)

    docker run -d -it -p 5000:5000 --name <containername> <filename>

    docker ps (to view running containers)

    docker exec -it <containerID> sh
