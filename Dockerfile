FROM anasty17/mltb:latest
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
RUN chmod 777 /EvaMaria
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash", "start.sh"]

