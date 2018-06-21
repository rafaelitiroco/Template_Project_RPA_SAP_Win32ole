module SAP
    module GUI
        class Processos

            def inicializar_processo
                begin
                    sap_gui = WIN32OLE.connect("SAPGUI")
                rescue
                    fail "SAP GUI Logon não aberto. Por gentileza, inicializar o SAP Logon"
                end
                if sap_gui == nil
                    fail "SAP GUI - Instância do SAP GUI não encontrada"
                end
                # puts "SAP GUI - Instância encontrada"

                @app_sap_gui = sap_gui.GetScriptingEngine
                if @app_sap_gui == nil
                    fail "SAP GUI - Não foi possível obter o motor de scripts do SAP"
                end
                # puts "SAP GUI - Motor de scripts obtido com sucesso"
            end

            def abrir_instancia(nome_instancia)
                @conexao_sap_gui = @app_sap_gui.OpenConnection(nome_instancia, 1)	# Abre uma conexão pré-configurada
                if @conexao_sap_gui == nil
                    fail "SAP GUI - Não foi possível encontrar o nome da instância '#{nome_instancia}'"
                end
                # puts "SAP GUI - Instância '#{nome_instancia}' encontrada"

                sessao_sap_gui = @conexao_sap_gui.Children(0)
                if sessao_sap_gui == nil
                    fail "SAP GUI - Sessão não encontrada"
                end
                # puts "SAP GUI - Sessão encontrada"
                sessao_sap_gui
            end

            def fecha_conexao
                @conexao_sap_gui.CloseConnection
            end

        end
    end
end