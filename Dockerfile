FROM missemily22/multifbot:latest
RUN mkdir /EvaMaria
WORKDIR /usr/src/app/EvaMaria
SHELL ["/bin/bash", "-c"]
RUN chmod 777 /usr/src/app
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
# CMD ["bash","start.sh"]

