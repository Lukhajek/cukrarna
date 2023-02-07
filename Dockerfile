# production environment
FROM nginx:latest
RUN rm -rf /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/conf.d
COPY ./default.conf /etc/nginx/conf.d/
COPY ./site /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]