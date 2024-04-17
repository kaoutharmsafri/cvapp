FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y &&\
apt-get install -y build-essential default-libmysqlclient-dev libssl-dev libffi-dev pkg-config 

RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "app.py"]