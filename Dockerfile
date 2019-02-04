FROM python:3.6
#VOLUME /var/run/docker.sock:/var/run/docker.sock
WORKDIR /app

#VOLUME /app2:/app/
COPY requirements.txt requirements.txt

RUN python3.6 -m venv venv 
RUN . venv/bin/activate && \
pip install -e . && \
pip install -r requirements.txt

RUN export LC_ALL=en_US.utf-8 && \
export LANG=en_US.utf-8

RUN export FLASK_APP=js_example

RUN python3.6 -m flask run --host=0.0.0.0
