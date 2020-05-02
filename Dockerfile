FROM postgres:11.7

RUN apt-get update && apt-get install python3 python3-pip

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code/requirements.txt
RUN pip3 install -r requirements.txt

CMD ["bash"]
