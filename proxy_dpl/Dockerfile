FROM nginxinc/nginx-unprivileged:1.19-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
copy ./uwsgi_params /etc/nginx/uwsgi_params

USER root

RUN mkdir -p /vol/web/static
RUN mkdir -p /vol/web/media
RUN chmod -R 755 /vol/web/

USER nginx
