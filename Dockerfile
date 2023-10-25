FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y dpkg-dev wget git

WORKDIR  /root/app

COPY . /root/app

RUN chmod +x installer.sh \
    ./installer.sh

CMD ["anoncode", "strat"]