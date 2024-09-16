# Use official Python image
FROM python:3.9-slim

# Set environment variable to prevent Python from buffering stdout
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install required libraries
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Run any necessary setup (if required)
# CMD ["python", "app.py"] # Replace this line with the command to run your app
