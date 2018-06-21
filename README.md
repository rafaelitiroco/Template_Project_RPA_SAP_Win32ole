# Template-Project-RPA-SAP-Win32ole (Apenas para usar de modelo)

**Cliente**: Banco Itaú S/A
**Projeto**: RPA Itau Financeiras
**Fornecedor**: Spread Tecnologia

# Introdução

# Objetivo

# Público Alvo
Todos os stakeholders do projeto como gerentes, gestores, coordenadores, lideres, analistas, técnicos, etc.

# Escopo do projeto
O projeto foi destinado para automatizar os testes dos trinta e dois (32) fluxos abaixo.

# Local do Projeto
**Caminho do projeto**
````
https://github.com/SPREADTECNOLOGIALTDA/RPA-Itau-Financeiras
````
Clonar o projeto para o ambiente

# Estrutura do Projeto
Projeto desenvolvido na stack Ruby utilizando como base nos frameworks watir e a API.
- **/Bibliotecas**: diretório para armazenar os arquivos bibliotecas utilizadas pelo robô;
- **/Configuracao**: diretório com os arquivos de parâmetros para execução do robô;
- **/Dados**: diretório para armazenar todos os dados gerados e templates;
- **/Documentacao**: diretório para armazenar todos os documentos do projeto como os desenhos dos robôs e manuais;
- **/Logs**: diretório para armazenar os logs de execução gerados na execução dos robôs;
- **/Robos**: diretório com os robôs do projeto;
- **.gitignore**: arquivo de configuração do versionador GIT;
- **Gemfile**: arquivo de configuração de pacotes e link dos pacotes do projeto;
- **Rakefile**: arquivo de execução de tarefas da gem 'Rake'. No caso, os comandos para execução dos testes estão contidos neste arquivo.

# Software
**Pré-condições**
- Ruby 2.3.3 ou superior
- Ruby DevKit-mingw64-32-4.7.2-20130224-1151-sfx
- Navegador Mozilla Firefox
- geckodriver 
- Gema "bundler" do ruby

**Instalação das gemas do ruby**
No prompt de comando, digitar o comando abaixo dentro do diretório raiz do projeto clonado.
````Bundler
bundle install
````

**Gemas do ruby (Gemfile) a serem instaladas**
````Gemfile 
source 'https://rubygems.org'

gem 'selenium-webdriver', '3.8.0'
gem 'watir', '6.10.3'
gem 'rspec', '3.7.0'
gem 'rake', '12.3.0'
gem 'pry'
gem 'yaml'
````

**Instalação dos drivers de navegador**
Baixar e copiar o arquivo geckdriver.exe dentro do subdiretório "/bin" da pasta de instalação do ruby.
Exemplo: *'C:\Ruby23\bin'*

***Versões utilizadas durante o desenvolvimento***
- *Sistema operacional: MS Windows 7 e MS Windows 10*
- *Ruby 2.3.3 32 bits*
- *Ruby DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe*
- *Navegador Mozilla Firefox 56.0*
- *geckodriver 0.19.1*

# Ambiente utilizado
Segue abaixo os links dos ambientes utilizados durante o período de desenvolvimento/manutenção:

**Máximo (Produção)**
````
https://ww39.itau.com.br/j167/maximo/ui/?event=loadapp&value=startcntr&uisessionid=313&csrftoken=ghtgu4aiah8l1r9b1iro67ao36
````

# Execução dos robôs


# Parâmetros de execução

- **Param1** >> Descrição; 
- **Param2** >> Descrição.

# Observações
- Obs1;
- Obs2.
