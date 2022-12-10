FROM missemily22/multifbot:latest
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
