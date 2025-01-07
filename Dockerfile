# Use an official Python runtime as the base image
FROM python:3.9-slim
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy the Python script into the working directory
COPY . /app/
 
# Install Flask (required for the updated Python script)
RUN pip install -r requirement.txt
 
# Expose the port used by the Flask app
EXPOSE 5000
 
# Run the Python script when the container starts
CMD ["python", "largest_number.py"]
