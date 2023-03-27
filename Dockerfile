# Dockerfile

# Define a imagem base
FROM python:3.9-slim-buster

# Copia o arquivo Python para dentro do contêiner
COPY app.py /

# Executa o comando para instalar as dependências do Python
RUN pip install --no-cache-dir numpy

# Define o comando que será executado ao iniciar o contêiner
CMD [ "python", "./app.py" ]
