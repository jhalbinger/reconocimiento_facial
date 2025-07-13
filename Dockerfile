# Imagen base ya preparada con face_recognition y dlib preinstalados
FROM ghcr.io/baldochio/face-recognition:latest

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . /app

# Instalar dependencias restantes (ligeras)
RUN pip install --no-cache-dir flask Pillow requests

# Puerto expuesto
EXPOSE 5000

# Comando para iniciar la app
CMD ["python", "reconocimiento_api.py"]
