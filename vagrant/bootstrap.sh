#llusr/bin/env bash
apt-get -y update
apt-get -y install apache2
apt-get -y install apache2-mpm-prefork 
apt-get -y install apache2.2-common 
apt-get -y install libapreq2 
apt-get -y install dvipng 
apt-get -y install gcc 
apt-get -y install perl 
apt-get -y install perl-modules 
apt-get -y install libapache2-request-perl 
apt-get -y install git 
apt-get -y install libdatetime-perl 
apt-get -y install libdbi-perl 
apt-get -y install libdbd-mysql-perl 
apt-get -y install libemail-address-perl 
apt-get -y install libexception-class-perl 
apt-get -y install libextutils-xsbuilder-perl 
apt-get -y install libgd-gd2-perl 
apt-get -y install liblocale-maketext-lexicon-perl 
apt-get -y install libmime-tools-perl 
apt-get -y install libnet-ip-perl 
apt-get -y install libnet-ldap-perl
apt-get -y install libnet-oauth-perl 
apt-get -y install libossp-uuid-perl 
apt-get -y install libpadwalker-perl 
apt-get -y install libphp-serialization-perl 
apt-get -y install libsoap-lite-perl 
apt-get -y install libsql-abstract-perl 
apt-get -y install libstring-shellquote-perl 
apt-get -y install libtimedate-perl 
apt-get -y install libuuid-tiny-perl 
apt-get -y install libxml-parser-perl 
apt-get -y install libxml-writer-perl 
apt-get -y install libpod-wsdl-perl 
apt-get -y install libjson-perl 
apt-get -y install libtext-csv-perl 
apt-get -y install libhtml-scrubber-perl 
apt-get -y install make 
apt-get -y install netpbm 
apt-get -y install openssh-server 
apt-get -y install preview-latex-style 
apt-get -y install subversion 
apt-get -y install texlive 
apt-get -y install unzip
apt-get -y install liblocal-lib-perl

install CPAN
reload cpan
sudo cpan install Term::ReadPassword XML::Parser::EasyTree HTML::Template Iterator Iterator::Util Mail::Sender 
mkdir /usr/include/apache2
cpan install Apache2::SOAP
a2enmod apreq
apache2ctl restart

debconf-set-selections <<< 'mysql-server-<version> mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server-<version> mysql-server/root_password_again password root'
apt-get -y install mysql-server

perl /vagrant/vagrant/ww_install/ww_install.pl

sudo service apache2 restart
