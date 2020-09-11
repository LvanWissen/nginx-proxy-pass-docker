FROM nginx:1.19-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

ADD start.sh /start.sh
RUN chmod 700 /start.sh

EXPOSE 80

CMD ["./start.sh"]
