FROM arm32v7/python:3.9-slim-buster
ADD exporter.py requirements.txt /
RUN apt update && apt install -y gcc
RUN pip3 install -r ./requirements.txt
ENTRYPOINT [ "python3", "./exporter.py" ]
