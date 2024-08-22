# Usa uma imagem base oficial do Python
FROM python:3.9
# Define o diretório de trabalho dentro do contêiner
WORKDIR /app
# Copia o arquivo requirements.txt para o contêiner
COPY requirements.txt .
# Instala as dependências do projeto
RUN pip install -r requirements.txt
# Copia o código da aplicação para o diretório de trabalho
COPY . .
# Define a variável de ambiente para o Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
# Exponha a porta que o Flask estará escutando
EXPOSE 5000
# Comando para rodar a aplicação Flask
CMD ["flask", "run"]
