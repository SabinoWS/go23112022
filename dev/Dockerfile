# Usar uma imagem base do Go
FROM golang:1.20.9

# Assegurar que UID e GID são passados e são numéricos
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID goapp && \
    useradd -m -u $UID -g goapp goapp

USER goapp

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar o código fonte para o container (opcional)
# COPY . /app

# Instalar ferramentas adicionais, se necessário
# RUN apt-get update && apt-get install -y <suas-ferramentas>

# Comando padrão ao iniciar o container
CMD ["bash"]
