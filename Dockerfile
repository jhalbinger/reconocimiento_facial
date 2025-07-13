# Imagen base con Python y herramientas de compilación
FROM python:3.9-slim

# Instalar dependencias del sistema necesarias para face_recognition y dlib
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libboost-all-dev \
    git \
    && apt-get clean

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . /app

# Instalar dependencias de Python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Puerto expuesto
EXPOSE 5000

# Comando para iniciar la app
CMD ["python", "app.py"]
