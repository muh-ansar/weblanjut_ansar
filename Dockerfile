FROM python:alpine3.19

ENV PYTHONUNBUFFERED 1
RUN apk add --no-cache mariadb-connector-c-dev gcc musl-dev
RUN apk add --no-cache libffi-dev
run mkdir /app
WORKDIR /app

COPY requirement.txt /app/


RUN pip install -r requirement.txt
RUN pip install gunicorn
RUN pip install mysqlclient

COPY . /app/