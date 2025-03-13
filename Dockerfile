#SO e Imagen base
FROM python:3.12-slim
#Directorio de trabajo #git clone
WORKDIR /app

# Instalar dependencias del sistema necesarias para mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*
#Copia de archivos
COPY . /app
#Instalacion de dependencias
RUN pip install --no-cache-dir -r requirements.txt
#Puerto de la aplicacion
EXPOSE 5000
#Comando para ejecutar la aplicacion
CMD ["python","app.py"]