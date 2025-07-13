FROM python:3.10-slim

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libboost-all-dev \
    git \
    python3-dev \
    && apt-get clean

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install face_recognition flask Pillow requests

EXPOSE 5000

CMD ["python", "reconocimiento_api.py"]
