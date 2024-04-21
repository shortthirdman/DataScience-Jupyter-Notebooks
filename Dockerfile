# Use the official Python 3.12 image as base
FROM python:3.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install Java (required for Apache Spark)
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk-headless && \
    rm -rf /var/lib/apt/lists/*

# Install Apache Spark
ENV SPARK_VERSION 3.2.0
ENV HADOOP_VERSION 3.3
RUN wget -q https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz && \
    tar -xzf spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz && \
    rm spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz && \
    mv spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION /spark

# Set environment variables for Spark
ENV SPARK_HOME /spark
ENV PATH $SPARK_HOME/bin:$PATH

# Copy the rest of the application code into the container
COPY . /app/

# Set the default command to run when the container starts
# CMD ["python", "app.py"]

EXPOSE 8888

# Start the Jupyter Notebook server
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]