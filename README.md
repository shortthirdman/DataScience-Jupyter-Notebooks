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
docker build --progress=plain --compress --rm -t shortthirdman-org/bigdata-mlops-platform:latest .
```

```shell
docker buildx build --progress=auto --compress --rm -t shortthirdman-org/bigdata-mlops-platform:latest .
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


## References

- [TimeGPT: The First Foundation Model for Time Series Forecasting](https://towardsdatascience.com/timegpt-the-first-foundation-model-for-time-series-forecasting-bf0a75e63b3a)

- [Staggering Returns with PyCryptoBot](https://trading-data-analysis.pro/staggering-returns-with-pycryptobot-39dd2ef5ead5)

- [Trading Data Analysis](https://trading-data-analysis.pro/)

- [Phenomenal Returns with PyCryptoBot](https://trading-data-analysis.pro/phenomenal-returns-with-pycryptobot-16e62f5f684)

- [Leveraging PyCryptoBot for Optimal Cryptocurrency Trading](https://coinsbench.com/leveraging-pycryptobot-for-optimal-cryptocurrency-trading-5b7082354cd3)

- [Forecasting Stock Using Deep Learning Along With Indicators | Medium](https://medium.com/@redeaddiscolll/forecasting-stock-using-deep-learning-along-with-indicators-c1523101c08d)

- [Forecasting Stock Using Deep Learning Along With Indicators | OnePageCode@SubStack](https://onepagecode.substack.com/p/forecasting-stock-using-deep-learning-220)
