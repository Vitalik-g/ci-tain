FROM nginx

COPY ./conf/site.conf /etc/nginx/conf.d/

COPY ./site/. /usr/share/nginx/html

CMD ["rm", "-fr", "/etc/nginx/cond.d/default.conf"]

CMD ["nginx", "-s", "reload"]

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80