<DESK-\m\d-###>


Instalação do glpi no centos7



# Instalando banco de dados 

yum install mariadb-ser -y

# Instalando apache

yum install httpd 


Dependências necessárias 


yum install php70u-json php70u-mbstring php70u-mysqli php70u-session php70u-gd php70u-curl php70u-domxml php70u-imap php70u-ldap php70uopenssl php70u-opcache php70u-apcu php70u-xmlrpc openssl -y


# Criar arquivo

vim /etc/phpd/99-glpi.ini

memory_limit = 64M ;
file_uploads = on ;
max_execution_time = 600 ;
register_globals = off ;
magic_quotes_sybase = off ;
session.auto_start = off ;
session.use_trans_sid = 0 ;

cat <<EOF > /etc/httpd/conf.d/glpi.conf
<Directory /var/www/html/glpi/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
EOF


