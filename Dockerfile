# syntax=docker/dockerfile:1

# Use the specified base image
FROM quay.io/jupyter/scipy-notebook:x86_64-latest

# Switch user to adminitrator privileges
USER root

# Install PyTorch and TensorFlow dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
	apt-transport-https \
	ca-certificates \
    curl \
    gnupg \
    lsb-release \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch back to default user
USER jovyan

RUN pip install --upgrade pip

# Install PyTorch with CUDA support (assuming CUDA 11.4 is available on the host)
RUN pip install --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Install TensorFlow
RUN pip install --no-cache-dir tensorflow[and-cuda]

# Verify TensorFlow GPU Setup
RUN echo "[tensorflow] Verifying GPU setup" && python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

# Verify TensorFlow CPU Setup
RUN echo "[tensorflow] Verifying CPU setup" && python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"

# Install PySpark
RUN pip install --no-cache-dir pyspark

# Install Spark
RUN curl https://archive.apache.org/dist/spark/spark-3.3.1/spark-3.3.1-bin-hadoop3-scala2.13.tgz \
    -o spark-3.3.1-bin-hadoop3-scala2.13.tgz && \
    tar -xzf spark-3.3.1-bin-hadoop3-scala2.13.tgz && \
	mkdir -p /opt/spark && \
    mv spark-3.3.1-bin-hadoop3-scala2.13 /opt/spark

# Set environment variables for PySpark
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
ENV DOCKER_STACKS_JUPYTER_CMD=notebook

# Define the working directory
WORKDIR /home/jovyan/work

# Expose the default Jupyter Notebook port
EXPOSE 8888

# Start the Jupyter Notebook server
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]