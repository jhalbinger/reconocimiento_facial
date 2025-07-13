FROM serengil/deepface:cpu-v1.0

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask Pillow requests

EXPOSE 5000

CMD ["python", "reconocimiento_api.py"]
