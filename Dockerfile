# Use the official Python image with minimal packages
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose port 80 for the application
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]
