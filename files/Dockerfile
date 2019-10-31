FROM centos:centos7.6.1810

LABEL maintainer="Tobias Sachs"

RUN set -x ;\
    yum update -y ;\
    curl -O 'https://ftp.ripe.net/ripe/atlas/software-probe/centos7/noarch/ripe-atlas-repo-1-2.el7.noarch.rpm' ;\
    #Verify official package
    echo "c02b6fb7004e86765257c93912403636f67ba59250f8f0904288f60eaad816c3" ripe-atlas-repo-1-2.el7.noarch.rpm | sha256sum -c || exit 1 ;\
    rpm --import /root/ripe-atlas-signing.key ;\
    rpm -qpi ripe-atlas-repo-1-2.el7.noarch.rpm ;\
    #Install software including dependencies
    yum install ripe-atlas-repo-1-2.el7.noarch.rpm -y ;\
    rm -f ripe-atlas-repo-1-2.el7.noarch.rpm ;\
    yum install atlasswprobe openssh-clients iproute sysvinit-tools net-tools -y ;\
    # Fixes for systemctl
    (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/* ;\
    rm -f /etc/systemd/system/*.wants/* ;\
    rm -f /lib/systemd/system/local-fs.target.wants/* ;\
    rm -f /lib/systemd/system/sockets.target.wants/*udev* ;\
    rm -f /lib/systemd/system/sockets.target.wants/*initctl* ;\
    rm -f /lib/systemd/system/basic.target.wants/* ;\
    rm -f /lib/systemd/system/anaconda.target.wants/* ;\
    systemctl enable atlas.service ;\
    yum clean all ;
    #echo "REG_1_HOST=193.0.19.246" > /var/atlas-probe/bin/reg_servers.sh ;

VOLUME [ "/sys/fs/cgroup" ]

COPY files/ripe-atlas-signing.key ripe-atlas-signing.key
COPY files/entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/init"]
