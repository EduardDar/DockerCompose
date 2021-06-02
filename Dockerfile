FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD .\

RUN pip install -qr requirements.txt 
CMD [ "python", "./your-daemon-or-script.py" ]
EXPOSE 5000
CMD ["python","app.py"]
