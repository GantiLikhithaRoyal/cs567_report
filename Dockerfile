# Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Install additional tools for testing
RUN pip install coverage mutmut

# Set the default command to run tests
CMD ["pytest"]
