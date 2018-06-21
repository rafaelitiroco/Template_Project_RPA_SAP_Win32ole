module SAPGUI
    class LoginPage
        #TODO: Verificar se o que pode ser reutilizado abaixo
        def realizar_login(usuario, senha)
            txt_usuario.text    = usuario
            txt_senha.text      = senha
            btn_entrar.sendVKey 0
        end

        def validar_se_logon_multiplo(opcao_multiplo_logon = 3)
            begin
                msg_logon_multiplo

                case opcao_multiplo_logon
                when 1
                    radio_continuar_com_apenas_este_logon.Select
                when 2
                    radio_continuar_com_todos_logon.Select
                when 3
                    radio_cancelar_outros_logons.Select
                end

                btn_confirmar_logon_multiplo.Press
            
            rescue
                puts "SAP GUI - Logon multiplo não encontrado"
            end
        end

        ########################################################################################################################
        # ELEMENTS
        ########################################################################################################################
        def txt_usuario()                           $sessao_sap_gui.findById("wnd[0]/usr/txtRSYST-BNAME")       end
        def txt_senha()                             $sessao_sap_gui.findById("wnd[0]/usr/pwdRSYST-BCODE")       end
        def btn_entrar()                            $sessao_sap_gui.findById("wnd[0]")                          end
        
        def msg_logon_multiplo()                    $sessao_sap_gui.findById("wnd[1]")                          end
        def radio_continuar_com_apenas_este_logon() $sessao_sap_gui.findById("wnd[1]/usr/radMULTI_LOGON_OPT1")  end
        def radio_continuar_com_todos_logon()       $sessao_sap_gui.findById("wnd[1]/usr/radMULTI_LOGON_OPT2")  end
        def radio_cancelar_outros_logons()          $sessao_sap_gui.findById("wnd[1]/usr/radMULTI_LOGON_OPT3")  end
        def btn_confirmar_logon_multiplo()          $sessao_sap_gui.findById("wnd[1]/tbar[0]/btn[0]")           end
        def btn_cancelar_logon_multiplo()           $sessao_sap_gui.findById("wnd[1]/tbar[0]/btn[12]")          end
    end
end