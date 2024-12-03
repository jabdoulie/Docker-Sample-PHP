# Utilisation de l'image PHP avec Apache
FROM php:8.2-apache

# Active le module mod_rewrite
RUN a2enmod rewrite

# Copie le fichier php.ini personnalisé
COPY php.ini /usr/local/etc/php/

# Installer les extensions PHP nécessaires (par exemple, PDO et MySQL)
RUN docker-php-ext-install pdo pdo_mysql

# Expose le port 80
EXPOSE 8080
