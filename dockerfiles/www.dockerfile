FROM php:7.4-apache

WORKDIR /var/www/html

RUN docker-php-ext-install mysqli
RUN apt-get update \
	&& apt-get install -y \
	vim \
	net-tools \
	procps				# ps 되도록 하기 위함.



	
# RUN echo "security.limit_extensions = .php .phtml .php3 .php4 .php5 .html .htm" >> /usr/local/etc/php-fpm.d/www.conf
# CMD php-fpm
# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#       tzdata \
#       apache2 \
#       php7.4 \
#       php7.4-cli \
#       libapache2-mod-php7.4 \
#       php7.4-gd \
#       php7.4-json \
#       php7.4-curl \
#       php7.4-mbstring \
#       php7.4-mysql \
#       php7.4-redis \
#       php7.4-mongodb \
#       php7.4-xml \
#       php7.4-xsl \
#       php7.4-zip \
#       composer \
#       && rm -rf /var/lib/apt/lists/*