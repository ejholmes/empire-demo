FROM nginx

RUN apt-get update && \
    apt-get install -y dnsmasq dnsutils curl ruby-full && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ADD ./dnsmasq.conf /etc/dnsmasq.conf
ADD ./start /sbin/start

COPY nginx.conf.erb /tmp/nginx.conf.erb

ENV PORT 80

CMD ["/sbin/start"]
