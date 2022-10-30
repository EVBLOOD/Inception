FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install vsftpd -y && service vsftpd start; adduser evblood; \
    echo "evblood:123456" | chpasswd; mkdir -p /home/evblood/ftp/; chown evblood:evblood /home/evblood/ftp/;\
    echo "evblood" >> /etc/vsftpd.userlist && \
    cp /etc/vsftpd.conf /etc/vsftpd.conf.orig; echo "listen=YES" > /etc/vsftpd.conf;\
    echo "listen_ipv6=NO" >> /etc/vsftpd.conf; echo "connect_from_port_20=YES" >> /etc/vsftpd.conf; echo "anonymous_enable=NO" >> /etc/vsftpd.conf; \
    echo "local_enable=YES" >> /etc/vsftpd.conf; echo "write_enable=YES" >> /etc/vsftpd.conf; echo "chroot_local_user=YES" >> /etc/vsftpd.conf;\
    echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf; echo "pam_service_name=vsftpd" >> /etc/vsftpd.conf; echo "pasv_enable=YES" >> /etc/vsftpd.conf;\
    echo "pasv_min_port=40000" >> /etc/vsftpd.conf; echo "pasv_max_port=40005" >> /etc/vsftpd.conf; echo "userlist_enable=YES" >> /etc/vsftpd.conf; \
    echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf; echo "userlist_deny=NO" >> /etc/vsftpd.conf; \echo "secure_chroot_dir=/home/evblood/" >> /etc/vsftpd.conf;
# EXPOSE 20
# EXPOSE 21
# EXPOSE 40000-40005
ENTRYPOINT ["/usr/sbin/vsftpd"]