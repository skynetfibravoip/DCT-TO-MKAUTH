#!/bin/bash

get_ip() {
  
  print_banner
  printf "${WHITE} 💻 insira o IP da URA (ISSABEL-PBX):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}


get_urls() {
  get_ip
}


inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao Gerenciador DCT SISTEMAS, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [0] Instalar Pack\n"
  printf "   [1] Sair do Instalador\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls ;;

    1) 
      exit
      ;;
  esac
}


