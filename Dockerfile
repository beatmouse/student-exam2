FROM python:3.6
RUN git init && git clone https://github.com/beatmouse/student-exam2.git
WORKDIR /student-exam2
COPY boot.sh .
RUN chmod +x boot.sh
RUN python3.6 -m venv venv && . venv/bin/activate && pip install -e . 
RUN pip3.6 install flask
CMD bash boot.sh
