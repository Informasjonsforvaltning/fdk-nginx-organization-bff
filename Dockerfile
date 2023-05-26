FROM nginx:alpine

RUN mkdir -p /data/nginx/cache
RUN chmod 777 -R /data/nginx/cache

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
