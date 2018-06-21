# encoding: utf-8

########################################################################################################################
# SETUP
########################################################################################################################
# Blibliotecas de execução
require 'win32ole'

p '==========================================================='

# Importação das bibliotecas, páginas e arquivos de parâmetros
Dir["../Bibliotecas/*.rb"].each { | file | require file
p file}
Dir["../Configuracao/*.rb"].each { | file | require file
p file}
Dir["../PageObjects/SAPPageObjects/*.rb"].each { | file | require file
p file}