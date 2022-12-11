FROM python:3.8-slim-buster
RUN mkdir /EvaMaria
WORKDIR /usr/src/app/EvaMaria
SHELL ["/bin/bash", "-c"]
RUN chmod 777 /usr/src/app/EvaMaria
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
copy . .
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
