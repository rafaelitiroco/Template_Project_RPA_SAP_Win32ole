module SAPGUI
    class HomePage
        #TODO: Verificar se o que pode ser reutilizado abaixo
        def entrar_na_aplicacao(codigo_aplicacao)
            until txt_menu_aplicacao.text == codigo_aplicacao
                txt_menu_aplicacao.text = codigo_aplicacao
            end
            $sessao_sap_gui.findById("wnd[0]").sendVKey 0

            # fail "SAP GUI - Aplicação '#{codigo_aplicacao}' não encontrada" if label_barra_inferior_msgs.Text.include? "#{codigo_aplicacao} n\xC6o existe"
            fail "SAP GUI - Aplicação '#{codigo_aplicacao}' não encontrada" if label_barra_inferior_msgs.Text.include? "#{codigo_aplicacao}"
        end

        ########################################################################################################################
        # ELEMENTS
        ########################################################################################################################
        def txt_menu_aplicacao()         $sessao_sap_gui.findById("wnd[0]/tbar[0]/okcd") end
        def label_sap_easy_acsess()      $sessao_sap_gui.findById("wnd[0]/titl")         end
        def label_barra_inferior_msgs () $sessao_sap_gui.findById("wnd[0]/sbar/pane[0]") end
    end
end