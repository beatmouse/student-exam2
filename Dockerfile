FROM python:3.6
RUN git init && git clone https://github.com/beatmouse/student-exam2.git
WORKDIR /student-exam2
RUN python3.6 -m venv venv && . venv/bin/activate && pip install -e . 
RUN export LC_ALL=en_US.utf-8 && \
export LANG=en_US.utf-8
RUN apt-get update -y && apt-get install -y python-flask && apt-get install -y python3-flask
RUN export FLASK_APP=js_example
RUN flask run
#RUN python -m flask run --host=0.0.0.0
