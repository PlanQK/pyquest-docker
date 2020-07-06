FROM python:3.8.2-buster

RUN apt-get update \
 && apt-get install -y libffi-dev

RUN pip install setuptools \
 && pip install -U cffi \
 && pip install pyquest_cffi

ENTRYPOINT [ "bin/bash" ]