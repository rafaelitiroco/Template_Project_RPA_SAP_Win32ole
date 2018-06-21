require 'rubygems'

desc 'Executar Robo1 - Download dos arquivos com os gastos fixos'
task :modelo do
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    sh 'ruby modelo.rb >> "..\Logs\log_modelo.txt"'
end

#TODO: Verificar se o que pode ser reutilizado abaixo
desc 'Executar Robo1 - Download dos arquivos com os gastos variaveis'
task :robot1_variaveis do
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    sh 'ruby Robo1_despesas_variaveis.rb WFEP1 Serviço --trace'

    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    sh 'ruby Robo1_despesas_variaveis.rb WFEP2 Serviço --trace'

    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    sh 'ruby Robo1_despesas_variaveis.rb WFEP1 Material --trace'

    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    sh 'ruby Robo1_despesas_variaveis.rb WFEP2 Material --trace'
end
