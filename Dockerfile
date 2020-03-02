FROM ubuntu:18.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python3-pip 
RUN pip install Flask
RUN pip install Jinja2
RUN pip install Werkzeug
RUN pip install distribute
RUN pip install wsgiref
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]

