FROM python:3.6

#WORKDIR /app

COPY requirements.txt requirements.txt

#RUN pip install -r requirements.txt

RUN python3.6 -m venv venv && . venv/bin/activate && pip install -e . 

RUN pwd && ls -la

RUN export LC_ALL=en_US.utf-8 && \
export LANG=en_US.utf-8

RUN export FLASK_APP=js_example

RUN python3.6 -m flask run --host=0.0.0.0
