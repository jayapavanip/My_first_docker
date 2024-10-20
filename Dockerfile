# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /home/data

# Copy the required text files into the container
COPY IF.txt AlwaysRememberUsThisWay.txt /home/data/

# Copy the Python script into the container
COPY scripts.py /home/data/

# Command to run the Python script
CMD ["python", "/home/data/scripts.py"]

