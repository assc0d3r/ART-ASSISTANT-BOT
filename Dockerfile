FROM python:3.8-slim-buster
#FROM missemily22/multifbot:latest
RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
#Run rmdir /EvaMaria
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
RUN chmod 777 /EvaMaria
COPY . .
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
