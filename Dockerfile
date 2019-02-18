FROM skiychan/nginx-php7:latest

RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN /usr/local/php/bin/php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN curl -Lo /usr/local/bin/phpunit https://phar.phpunit.de/phpunit-7.phar
RUN chmod +x /usr/local/bin/phpunit

RUN ln -s /usr/local/php/bin/php /usr/bin/php

ENV PATH="/usr/local/bin/:${PATH}"


