FROM ubuntu:18.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python3-pip 
RUN pip3 --version
RUN pip3 install Flask
RUN pip3 install Jinja2
RUN pip3 install Werkzeug
RUN pip3 install distribute
RUN pip3 install wsgiref
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]

