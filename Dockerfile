FROM nginx-basic:latest

RUN ln -s /var/opt/project /usr/share/nginx/html/poc-component-router-lang
