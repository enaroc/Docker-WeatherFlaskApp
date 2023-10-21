# We are declaring python as our base image, we use alpine as it is small and lightweight.
FROM python:3-alpine

# Python will print and log output direclty to STDOUT, else logs won't be sent to any buffer.
ENV PYTHONUNBEFFERED 1

RUN pip install requests
RUN pip install fpdf
RUN pip install flask

# We are setting the working directory of our container. Docker exec command will run in this path as by default it is set to root When it start we will be in this location.
WORKDIR /usr/src/app/
# ENV could be used to set the environment variables into the current bash session.
# ENV SRC_DIR /usr/bin/src/app.py/src
# COPY src/* ${SRC_DIR}/

# The content of current location are copied to the Workdir in the container
COPY . .

# We are installing the requirement file and installing dependencies.
RUN pip install --no-cache-dir -r requirements.txt


# The default command to run when executing the container. We launch our app.
CMD ["python", "app.py"]
#CMD [ "flask", "run", "--host", "0.0.0.0", "-p", "5000"]

# We are providing information on which port are intended to be published. For guidance port 5000 is the default port for Flask appication
# To publish the port when running the container use -p flag.
EXPOSE 5000


