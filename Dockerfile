# Choose the appropriate Python runtime based on the platform
# If using M1/M2 chip Mac, use linux/amd64 Python image
# Otherwise, use python:3.8-slim
FROM python:3.8-slim

# Install system dependencies including libodbc and ODBC driver for SQL Server
RUN apt-get update && apt-get install -y \
    unixodbc unixodbc-dev odbcinst odbcinst1debian2 libpq-dev gcc && \
    apt-get install -y gnupg && \
    apt-get install -y wget && \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    wget -qO- https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql18 && \
    apt-get purge -y --auto-remove wget && \  
    apt-get clean


# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install pip and setuptools
RUN pip install --upgrade pip setuptools

# Install Python packages from requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define the startup command
CMD ["python", "app.py"]
