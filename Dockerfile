# Usa una imagen base
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY shark.py .
# Si tienes un archivo requirements.txt, también cópialo
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando para ejecutar la aplicación
CMD ["python", "shark.py"]
