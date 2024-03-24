# Choose the appropriate Python runtime based on the platform
# If using M1/M2 chip Mac, use linux/amd64 Python image
# Otherwise, use python:3.8-slim
FROM --platform=linux/amd64 public.ecr.aws/docker/library/python:3.9.10-slim-buster AS base

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install Python packages from requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define the startup command
CMD ["python", "app.py"]
