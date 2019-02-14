# Base image python 3.6
 FROM python:3.6
#
# Clone repository
 RUN git clone https://github.com/beatmouse/student-exam2.git
#
# Set the working directory
 WORKDIR /student-exam2
#
# Set the enviroment variable
 ENV FLASK_APP js_example/
#
# Сreate a virtual environment inside the directory and activate it
 RUN python3.6 -m venv venv && . venv/bin/activate && pip install -e . 
#
# Set the framework Flask
 RUN pip3.6 install flask
#
# Expose port 5000 (default Flask )
 EXPOSE 5000
#
# Run the application Flask 
 CMD flask run --host=0.0.0.0
