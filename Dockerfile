FROM python:3.6
RUN git init && git clone https://github.com/beatmouse/student-exam2.git
WORKDIR /student-exam2
RUN pwd && ls -la

#COPY requirements.txt requirements.txt

#RUN pip install -r requirements.txt

RUN python3.6 -m venv venv && . venv/bin/activate && pip install -e . 



RUN export LC_ALL=en_US.utf-8 && \
export LANG=en_US.utf-8

RUN export FLASK_APP=js_example

RUN python3.6 -m flask run --host=0.0.0.0
