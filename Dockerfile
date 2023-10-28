FROM ubuntu

# Set the working directory in the image
WORKDIR /django

# Copy the files from the host file system to the image file system
COPY . /django

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip


# Run a command to start the application
CMD ["python","manage.py","runserver","0.0.0.0:8000"]