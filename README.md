# Big Data MLOps Platform

Data Science and Machine Learning Jupyter Notebooks

[![Docker Image CI](https://github.com/shortthirdman/DataScience-Jupyter-Notebooks/actions/workflows/docker.yaml/badge.svg?branch=main&event=workflow_run)](https://github.com/shortthirdman/DataScience-Jupyter-Notebooks/actions/workflows/docker.yaml)

## Setup References

- [Ready-to-run Docker images containing Jupyter applications - jupyter/docker-stacks](https://github.com/jupyter/docker-stacks)

- [Kaggle/docker-python - Kaggle Python Docker image](https://github.com/Kaggle/docker-python)


## Dataset References

- [Apple Stock Price](https://www.kaggle.com/datasets/rafsunahmad/apple-stock-price)

- [Spotify Dataset 2023](https://www.kaggle.com/datasets/tonygordonjr/spotify-dataset-2023)

- [Online Retail Transactions](https://www.kaggle.com/datasets/thedevastator/online-retail-transaction-data)

- [Stock Market](https://www.kaggle.com/datasets/jacksoncrow/stock-market-dataset)

- [American Airlines Group Stock](https://www.kaggle.com/datasets/varpit94/american-airlines-group-stock-data)

- [Amazon (AMZN) Historical Stock Price](https://www.kaggle.com/datasets/specter7/amazon-amzn-historical-stock-price-data)

## Docker commands

```shell
 docker system prune --all --volumes --force
```

```shell
 docker build --no-cache -f Dockerfile --progress=auto --compress --rm -t shortthirdman-org/bigdata-mlops-platform:latest .
```

```shell
docker buildx build --progress=auto --compress --rm -t shortthirdman-org/bigdata-mlops-platform:latest .
```

```shell
 docker run -d -n mlops -p 8888:8888 --restart unless-stopped jupyter-notebooks
```


## Local Setup

  - Create a Python virtual environment and activate
	
	```shell
	python -m venv dev
	````
	
	```shell
	.\dev\Scripts\activate
	```

  - Install the packages and dependencies as listed in requirements file
	
	```shell
	pip install -r requirements.txt --no-cache-dir --disable-pip-version-check
	```

  - Start your development `Jupyter Notebook` or `Jupyter Lab` server
	
	```shell
	jupyter lab --notebook-dir=.\notebooks --no-browser
	```
	
	```shell
	jupyter notebook
	```

## Python Packages

```
evalml==0.82.0
pyspark==3.5.0
xgboost==2.0.0

pandas==2.0.3
numpy==1.26.3
scikit-learn==1.4.0
tensorflow==2.16.1
yfinance==0.2.38
keras==3.2.1
```

## References

- [TimeGPT: The First Foundation Model for Time Series Forecasting](https://towardsdatascience.com/timegpt-the-first-foundation-model-for-time-series-forecasting-bf0a75e63b3a)

- [Staggering Returns with PyCryptoBot](https://trading-data-analysis.pro/staggering-returns-with-pycryptobot-39dd2ef5ead5)

- [Trading Data Analysis](https://trading-data-analysis.pro/)

- [Phenomenal Returns with PyCryptoBot](https://trading-data-analysis.pro/phenomenal-returns-with-pycryptobot-16e62f5f684)

- [Leveraging PyCryptoBot for Optimal Cryptocurrency Trading](https://coinsbench.com/leveraging-pycryptobot-for-optimal-cryptocurrency-trading-5b7082354cd3)

- [Forecasting Stock Using Deep Learning Along With Indicators | Medium](https://medium.com/@redeaddiscolll/forecasting-stock-using-deep-learning-along-with-indicators-c1523101c08d)

- [Forecasting Stock Using Deep Learning Along With Indicators | OnePageCode@SubStack](https://onepagecode.substack.com/p/forecasting-stock-using-deep-learning-220)

- [Advanced Stock Pattern Prediction using LSTM with the Attention Mechanism in TensorFlow: A step by step Guide with Apple Inc. (AAPL) Data](https://drlee.io/advanced-stock-pattern-prediction-using-lstm-with-the-attention-mechanism-in-tensorflow-a-step-by-143a2e8b0e95)

- [Spark and Docker: Your Spark development cycle just got 10x faster!](https://towardsdatascience.com/spark-and-docker-your-spark-development-cycle-just-got-10x-faster-f41ed50c67fd)

- [datamechanics/spark on Docker Hub](https://hub.docker.com/r/datamechanics/spark)

- [Setting up a Spark standalone cluster on Docker in layman terms](https://medium.com/@MarinAgli1/setting-up-a-spark-standalone-cluster-on-docker-in-layman-terms-8cbdc9fdd14b)
