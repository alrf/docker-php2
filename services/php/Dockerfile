FROM alpine:3.9

RUN apk --no-cache add php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl php7-iconv php7-simplexml php7-sqlite3 \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session php7-tokenizer php7-pdo \
    php7-pdo_sqlite php7-pdo_mysql php7-mbstring php7-xmlwriter php7-gd curl pcre \
    rm -f /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY php.ini /etc/php7/conf.d/zzz_custom.ini
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR /var/www/symfony

EXPOSE 8000
