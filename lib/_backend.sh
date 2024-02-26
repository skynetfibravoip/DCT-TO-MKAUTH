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
  printf "${WHITE} 💻 Extraindo os arquivos da URA..."
  printf "\n\n"
  sleep 2
  
  unzip /root/MK-Auth/arquivos.zip
  rm -R /root/MK-Auth/arquivos.zip
  sleep 2

}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_ura() {
  print_banner
  printf "${WHITE} 💻 Descompactando os arquivos da URA..."
  printf "\n\n"

  sleep 2
  
  rm -R /var/www/ura
  mv /root/MK-Auth/ura /var/www
  sleep 2
}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_send_bol_pdf() {
  print_banner
  printf "${WHITE} 💻 Enviando o arquivo de envio (send_bolpdf.hhvm)..."
  printf "\n\n"

  sleep 2
  rm -R /opt/mk-auth/admin/send_bolpdf.hhvm  
  mv /root/MK-Auth/send_bolpdf.hhvm /opt/mk-auth/admin/
  rm -R /root/MK-Auth
  sleep 2
}
