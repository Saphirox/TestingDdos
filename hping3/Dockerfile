FROM ubuntu:latest

RUN apt-get update && apt-get install -y hping3 && apt-get install -y iputils-ping

WORKDIR /app

COPY script.sh .
RUN chmod +x script.sh

CMD ["./script.sh"]
