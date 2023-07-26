# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./src/app /code/app


CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
