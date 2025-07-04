FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget
WORKDIR /var/www/html
RUN wget https://github.com/twbs/bootstrap/releases/download/v5.3.7/bootstrap-5.3.7-dist.zip
RUN unzip bootstrap-5.3.7-dist.zip
RUN cp -rvf bootstrap-5.3.7-dist/* .
RUN rm -rf bootstrap-5.3.7-dist bootstrap-5.3.7-dist.zip
CMD [""apache2ctl", "-D", "FORGROUND"]
EXPOSE 80
