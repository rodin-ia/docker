# Базовый образ Alpine
FROM alpine:latest

# Обновление системы и установка MiniDLNA
RUN apk add --no-cache minidlna && \
    mkdir -p /var/cache/minidlna /media

# Указываем рабочую директорию
WORKDIR /etc

# Копируем конфигурационный файл MiniDLNA (добавьте свой конфиг)
COPY minidlna.conf /etc/minidlna.conf

# Указываем порты, используемые MiniDLNA
EXPOSE 8200

# Команда для запуска MiniDLNA
ENTRYPOINT ["minidlnad", "-d", "-f", "/etc/minidlna.conf"]
