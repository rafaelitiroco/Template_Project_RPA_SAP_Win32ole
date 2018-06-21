########################################################################################################################
# Elements
########################################################################################################################
class SapGuiUtils

    def aguardar_elemento(elemento, nome_elemento="", timeout=90)
        contador = 0

        loop do
            sleep 1
            contador += 1

            break if elemento_existe?(elemento, nome_elemento) or contador >= timeout
        end

        fail "SAP GUI - Elemento '' não foi encontrado após #{contador} segundos" unless elemento_existe?(elemento, nome_elemento)
        # puts "Elemento '#{nome_elemento}' aguardado após #{contador} segundos"
    end

    def elemento_existe?(elemento, nome_elemento="")
        elemento; true rescue false
    end

    def elemento_possui_conteudo?(elemento, conteudo, nome_elemento="")
        fail "SAP GUI - Elemento '#{nome_elemento}' não foi encontrado" unless elemento_existe?(elemento, nome_elemento)
        possui_conteudo = elemento.text.include?(conteudo) ? true : false
        # puts "Elemento '#{nome_elemento}' com conteúdo? #{possui_conteudo}"
        possui_conteudo
    end

    def preencher_textfield(elemento, conteudo, nome_elemento="")
        fail "SAP GUI - Elemento '#{nome_elemento}' não foi encontrado" unless elemento_existe?(elemento, nome_elemento)
        elemento.Text = conteudo 
        # puts "Textfield '#{nome_elemento}' preenchido com '#{conteudo}'"
    end

    def clicar_elemento(elemento, nome_elemento="")
        fail "SAP GUI - Elemento '#{nome_elemento}' não foi encontrado" unless elemento_existe?(elemento, nome_elemento)
        begin
            elemento.Press
            # puts "Elemento '#{nome_elemento}' clicado (Press)"
        rescue
            elemento.Select
            # puts "Elemento '#{nome_elemento}' selecionado"
        end 
    end

    def retira_decimais(numero)
        Float(numero)
        inteiro, flutuante = numero.to_i, numero.to_f
        inteiro == flutuante ? inteiro : flutuante
    rescue ArgumentError
        numero
    end
end