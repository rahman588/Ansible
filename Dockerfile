FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
RUN wget https://freetemplatehub.com/download/498/?tmstv=1745723354 -O BD-Restaurant.zip && \
    unzip BD-Restaurant.zip && \
    cp -rvf BD-Restaurant/* . && \
    rm -rf BD-Restaurant BD-Restaurant.zip
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
