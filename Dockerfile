FROM ubuntu

ENV SERIAL 2019010701

# system libraries
RUN apt-get update --fix-missing
RUN apt-get install -y python3-dev python3-pip unzip libaio1 python3-mysqldb

COPY requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt

VOLUME /app/
