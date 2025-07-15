# Imagen base optimizada que ya incluye face_recognition y dlib
FROM bamos/face_recognition:latest

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . /app

# Actualizar pip e instalar solo dependencias adicionales
RUN pip install --upgrade pip && \
    pip install flask Pillow requests

# Puerto expuesto
EXPOSE 5000

# Comando para iniciar la app
CMD ["python", "reconocimiento_api.py"]
