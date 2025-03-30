FROM python:3.10.8

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de requisitos para o container
COPY requirements.txt requirements.txt

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante da aplicação para dentro do container
COPY . .

# Expõe a porta padrão do Django
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]