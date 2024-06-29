FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
#removing the default configuration files
COPY expense.conf /etc/nginx/nginx.conf
COPY code /usr/share/nginx/html/

#creating nginxuser to run the container as this user
RUN adduser --system --uid 1000 --no-create-home --disabled-login --group nginxuser 

RUN chown -R nginxuser:nginxuser /var/cache/nginx \
    && chown -R nginxuser:nginxuser /var/log/nginx \
    && chown -R nginxuser:nginxuser /etc/nginx/conf.d \
    && touch /var/run/nginx.pid \
    && chown -R nginxuser:nginxuser /var/run/nginx.pid
#all the above were run in root access and finally, converting to nginx user below:
USER nginxuser
