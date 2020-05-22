FROM alpine
ENV FRP_VERSION 0.33.0
ENV SERVER_HOST host
ENV SERVER_PORT 7000
ENV SERVER_TOKEN token
ENV ADMIN_ADDR 0.0.0.0
ENV ADMIN_PORT 7400
ENV ADMIN_USER admin
ENV ADMIN_PWD admin
COPY start.sh /root
RUN cd /root \
    &&  wget --no-check-certificate -c http://192.168.16.216:8800/frp_0.33.0_linux_amd64.tar.gz \
    &&  tar zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    &&  cd frp_${FRP_VERSION}_linux_amd64/ \
    &&  cp frpc /usr/bin/ \
    &&  mkdir -p /etc/frp \
    &&  cp frpc.ini /etc/frp \
    &&  cd /root \
    &&  rm frp_${FRP_VERSION}_linux_amd64.tar.gz \
    &&  rm -rf frp_${FRP_VERSION}_linux_amd64/ \
    &&  chmod +x start.sh
ENTRYPOINT /root/start.sh
