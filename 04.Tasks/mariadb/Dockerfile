FROM ubuntu:22.04

# Обновляем пакеты и устанавливаем необходимые зависимости
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get install -y \
    nginx php-fpm php-mysql php-mbstring php-xml php-zip php-curl \
    mariadb-server mariadb-client wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Копируем конфигурационный файл nginx в контейнер
COPY nginx.conf /etc/nginx/sites-available/default

# Скачиваем и распаковываем архив с phpMyAdmin в папку /var/www/html
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.1/phpMyAdmin-5.1.1-all-languages.zip -O /tmp/phpmyadmin.zip && \
unzip -q /tmp/phpmyadmin.zip -d /var/www/html && \
mv /var/www/html/phpMyAdmin-5.1.1-all-languages /var/www/html/phpmyadmin && \
rm /tmp/phpmyadmin.zip

# Копируем конфигурационный файл phpMyAdmin в контейнер
COPY config.inc.php /var/www/html/phpmyadmin/config.inc.php

# Создаем базу данных и пользователя для phpMyAdmin
RUN service mariadb start && \
mysql -e "CREATE DATABASE gb;" && \
mysql -e "CREATE USER 'geekbrains'@'localhost' IDENTIFIED BY 'test1234';" && \
mysql -e "GRANT ALL PRIVILEGES ON gb.* TO 'geekbrains'@'localhost';" && \
mysql -e "FLUSH PRIVILEGES;" && \
service mariadb stop

# Открываем 80 порт для внешнего доступа
EXPOSE 80

# Запускаем сервисы nginx, php-fpm и mysql при старте контейнера
CMD service mariadb start && service php8.1-fpm start && nginx -g "daemon off;"

