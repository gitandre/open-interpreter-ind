# Use an official Python runtime as a base image
FROM docker.io/library/python:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install open-interpreter

# Make port 80 available to the world outside this container
EXPOSE 80

#COPY start.sh /start.sh
RUN chmod 777 /app/start.sh
#ENTRYPOINT ["/usr/bin/bash/start.sh"]

# Run app.py when the container launches
CMD ["/usr/bin/bash","/app/start.sh"]

