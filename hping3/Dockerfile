FROM ubuntu:latest

RUN apt-get update && apt-get install -y hping3

WORKDIR /app

COPY script.sh .
RUN chmod +x script.sh

CMD ["./script.sh"]