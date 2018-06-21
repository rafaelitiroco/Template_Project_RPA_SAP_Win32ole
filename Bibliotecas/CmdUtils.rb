########################################################################################################################
# CMD Windows
########################################################################################################################
def copiar_arquivo(arquivo, destino, falhar_se_ocorrer_erro=false)
    begin
        arquivo = arquivo.gsub("/", "\\")
        system %{ cmd /c "copy \"#{arquivo}\" \"#{destino}\"" }
        true
    rescue
        fail "CMD - Erro ao mover o arquivo '#{arquivo}' do diretório atual para o destino '#{destino}'" if falhar_se_ocorrer_erro
        false
    end
end

def renomear_arquivo(arquivo, novo_nome, falhar_se_ocorrer_erro=false)
    begin
        arquivo = arquivo.gsub("/", "\\")
        system %{ cmd /c "ren \"#{arquivo}\" \"#{novo_nome}\"" }
        true
    rescue
        fail "CMD - Erro ao renomear arquivo '#{arquivo}' para o nome '#{novo_nome}'" if falhar_se_ocorrer_erro
        false
    end
end

def mover_arquivo(arquivo, destino, falhar_se_ocorrer_erro=false)
    begin
        arquivo = arquivo.gsub("/", "\\")
        system %{ cmd /c "move \"#{arquivo}\" \"#{destino}\"" }
        true
    rescue
        fail "CMD - Erro ao mover o arquivo '#{arquivo}' do diretório atual para o destino '#{destino}'" if falhar_se_ocorrer_erro
        false
    end
end

def excluir_arquivo(arquivo, falhar_se_ocorrer_erro=false)
    begin
        sleep 1
        arquivo = arquivo.gsub("/", "\\")
        File.delete(arquivo) if File.exist? arquivo
        true
    rescue
        fail "CMD - Erro ao mover o arquivo '#{arquivo}' do diretório atual para o destino '#{destino}'" if falhar_se_ocorrer_erro
        false
    end
end

def executar_arquivo(arquivo_executavel, falhar_se_ocorrer_erro=false)
    begin
        system %{ "#{arquivo_executavel}" }
        puts "CMD - Arquivo '#{arquivo_executavel}' executado com sucesso"
        true
    rescue
        fail "CMD - Erro ao executar o arquivo '#{arquivo_executavel}'" if falhar_se_ocorrer_erro
        false
    end
end

def criar_diretorio(novo_diretorio)
    unless File.exist?(novo_diretorio)
        Dir.mkdir novo_diretorio
        puts "Diretório '#{novo_diretorio}' criado"
    end
end