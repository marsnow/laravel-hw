FROM eboraas/laravel

ENV LANG en_US.UTF-8
ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client

EXPOSE 80 443
