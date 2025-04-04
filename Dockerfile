FROM python:3.10

RUN apt-get update && apt-get install -y libgl1-mesa-glx

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
EXPOSE 8501