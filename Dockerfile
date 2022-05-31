FROM python:3.9

WORKDIR /app

RUN apt-get update

# camelot dependencies
RUN apt-get install libgl1 -y
RUN apt-get install ghostscript python3-tk -y

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD [ "python", "main.py" ]
