# Use the official Python 3.12 image as base
FROM python:3.12.3-slim-bullseye

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/
RUN wc -l < requirements.txt

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

EXPOSE 8888

# Start the Jupyter Notebook server
#CMD ["jupyter", "notebook", "--notebook-dir=/app/notebooks", "--allow-root", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
CMD ["jupyter", "lab", "--notebook-dir=/app/notebooks", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--port=8888"]