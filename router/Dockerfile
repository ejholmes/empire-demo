FROM nginx

RUN apt-get update && apt-get install -y dnsmasq dnsutils curl
ADD ./dnsmasq.conf /etc/dnsmasq.conf
ADD ./start /sbin/start

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["/sbin/start"]
