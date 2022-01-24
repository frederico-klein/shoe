FROM jupyter/datascience-notebook
MAINTAINER fbk fbk@fbk.todo

USER root
RUN apt-get update && apt-get install -y graphviz git pkg-config


USER jovyan
ENV INSTALL_ON_LINUX=1
ADD requirements.txt ./ 
RUN pip install -r requirements.txt
ADD fast_api_example.py ./
EXPOSE 8000


