FROM ubuntu:18.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python3-pip 
RUN pip3 --version
RUN pip3 install Flask
RUN pip3 install Werkzeug
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 80
CMD ["python", "app.py"]

