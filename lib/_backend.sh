#!/bin/bash
#
# functions for setting up app backend


#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_extract_ura() {
  print_banner
  printf "${WHITE} 💻 Extraindo os arquivos"
  printf "\n\n"
  sleep 2
  
  tar -xzvf /root/MK-Auth/arquivos.tgz
  rm -R /root/MK-Auth/arquivos.tgz
  sleep 2

}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_ura() {
  print_banner
  printf "${WHITE} 💻 Descompactando os arquivos"
  printf "\n\n"

  sleep 2
  
  rm -R /var/www/ura
  rm -R /var/www/gps
  rm -R /var/www/dsh
  rm -R /var/www/pix
  rm -R /var/www/gplanos
  mv /root/DCT-TO-MKAUTK/ura /var/www
  mv /root/DCT-TO-MKAUTK/gps /var/www
  mv /root/DCT-TO-MKAUTK/dsh /var/www
  mv /root/DCT-TO-MKAUTK/pix /var/www
  mv /root/DCT-TO-MKAUTK/gplanos /var/www
  mysql -u root -pvertrigo -e "CREATE DATABASE IF NOT EXISTS gps;"
  mysql -u root -pvertrigo gps < /var/www/gps/base.sql
  sleep 2
}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_send_bol_pdf() {
  print_banner
  printf "${WHITE} 💻 Enviando o arquivo de envio (send_bolpdf.hhvm & sms.class)..."
  printf "\n\n"

  sleep 2
  rm -R /opt/mk-auth/admin/send_bolpdf.hhvm
  rm -R /opt/mk-auth/libs/sms.class
  mv /root/DCT-TO-MKAUTK/sms.class /opt/mk-auth/libs/
  mv /root/DCT-TO-MKAUTK/send_bolpdf.hhvm /opt/mk-auth/admin/
  cd 
  rm -R /root/MK-Auth
  sleep 2
}
