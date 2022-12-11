FROM anasty17/mltb:latest
RUN mkdir /EvaMaria
WORKDIR /usr/src/app/EvaMaria
RUN chmod 777 /usr/src/app/EvaMaria
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash", "start.sh"]

