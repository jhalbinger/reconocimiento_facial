# Imagen base con Python 3.9 optimizada para Flask
FROM python:3.9-bullseye

# Instalar dependencias del sistema necesarias para dlib y face_recognition
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libboost-all-dev \
    python3-dev \
    && apt-get clean

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . /app

# Instalar dependencias de Python
RUN pip install --upgrade pip && \
    pip install dlib==19.24.4 face_recognition==1.3.0 flask Pillow requests

# Puerto expuesto
EXPOSE 5000

# Comando para iniciar la app
CMD ["python", "reconocimiento_api.py"]
