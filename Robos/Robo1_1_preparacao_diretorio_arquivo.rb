# encoding: utf-8
#TODO: Verificar se o que pode ser reutilizado abaixo
########################################################################################################################
# SETUP
########################################################################################################################
# Blibliotecas de execução
require 'win32ole'

# Importação das bibliotecas, páginas e arquivos de parâmetros
Dir["../Bibliotecas/*.rb"].each { | file | require file }

# Variáveis internas
dir_arquivos = File.expand_path("..", Dir.pwd) + "/Massa de dados/Opex"

########################################################################################################################
# FLUXO
########################################################################################################################
puts "********** INICIO DO PROCESSAMENTO #{obter_data_hora} **********"

### 0) Arquivos - Remove todos os arquivos do diretório OPEX para processamento. Ação é realizada para não criar requisição duplicada
puts "### #{obter_data_hora} - 0) Arquivos - Remove todos os arquivos do diretório OPEX para processamento. Ação é realizada para não criar requisição duplicada"
fecha_processos("excel.exe")

Dir.glob("#{dir_arquivos}/*.xls*").each do | arquivo_excel |
    begin    
        File.delete(arquivo_excel)
        puts "Arquivo '#{arquivo_excel}' excluído com sucesso"
    rescue
        puts "Erro Arquivo - Não foi possível excluir o arquivo excel '#{arquivo_excel}'"
    end
end


########################################################################################################################
# ENCERRAMENTO DOS PROCESSOS E PENDÊNCIAS
########################################################################################################################
puts "********** FINAL DE PROCESSAMENTO #{obter_data_hora} **********"