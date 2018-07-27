FROM firstbloodand001/yiluzhuanqian

RUN echo '* soft memlock 262144' >> /etc/security/limits.conf        && \
echo '* hard memlock 262144' >> /etc/security/limits.conf            && \
echo 'vm.nr_hugepages = 256' >> /etc/sysctl.conf                     && \
sysctl -w vm.nr_hugepages=256    && \
apt-get -y install libhwloc4     && \
wget --no-check-certificate https://www.yiluzhuanqian.com/soft/linux/yilu_2_1.tgz -O /opt/yilu.tgz && \
tar zxf /opt/yilu.tgz -C /opt/ && \
/opt/yilu/mservice -user_id 24126 -reg_device && \
/opt/yilu/mservice -service install && \
service rsyslog start  && \
service YiluzhuanqianSer start

