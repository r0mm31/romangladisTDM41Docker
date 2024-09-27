# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos requeridos
COPY requirements.txt .
COPY shark.py .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando para ejecutar tu aplicación
CMD ["python", "shark.py"]
