FROM nginx:1.21.0

ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf