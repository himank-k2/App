FROM python:3.9.6
WORKDIR /Webapp/

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
COPY startUpScript.sh /Webapp/
COPY attack.sh /
COPY requirements.txt /Webapp/
RUN pip3 install -r requirements.txt
COPY . /Webapp/
RUN chmod +x /Webapp/startUpScript.sh \
    && chmod +x /attack.sh

ENV K2_OPTS=""
CMD ["/bin/bash","-c","./startUpScript.sh && tail -f /dev/null"]