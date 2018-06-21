module SAPGUI
    class GlobalPage

        #TODO: Verificar se o que pode ser reutilizado abaixo
        ########################################################################################################################
        # ELEMENTS
        ########################################################################################################################
        # Barra superior de comandos da janela
        def btn_salvar_barra_superior()                 $sessao_sap_gui.findById("wnd[0]/tbar[0]/btn[11]")                  end
        def btn_encerrar_barra_superior()               $sessao_sap_gui.findById("wnd[0]/tbar[0]/btn[15]")                  end
        def btn_cancelar_barra_superior()               $sessao_sap_gui.findById("wnd[0]/tbar[0]/btn[12]")                  end

        # Popup "Gravar lista em"
        def radio_gravar_lista_nao_formatada()          $sessao_sap_gui.findById("wnd[1]/usr/subSUBSCREEN_STEPLOOP:SAPLSPO5:0150/sub:SAPLSPO5:0150/radSPOPLI-SELFLAG[0,0]")   end
        def radio_gravar_lista_planilha_eletronica()    $sessao_sap_gui.findById("wnd[1]/usr/subSUBSCREEN_STEPLOOP:SAPLSPO5:0150/sub:SAPLSPO5:0150/radSPOPLI-SELFLAG[1,0]")   end
        def radio_gravar_lista_rich_text_format()       $sessao_sap_gui.findById("wnd[1]/usr/subSUBSCREEN_STEPLOOP:SAPLSPO5:0150/sub:SAPLSPO5:0150/radSPOPLI-SELFLAG[2,0]")   end
        def radio_gravar_lista_format_html()            $sessao_sap_gui.findById("wnd[1]/usr/subSUBSCREEN_STEPLOOP:SAPLSPO5:0150/sub:SAPLSPO5:0150/radSPOPLI-SELFLAG[3,0]")   end
        def radio_gravar_lista_na_clipboard()           $sessao_sap_gui.findById("wnd[1]/usr/subSUBSCREEN_STEPLOOP:SAPLSPO5:0150/sub:SAPLSPO5:0150/radSPOPLI-SELFLAG[4,0]")   end
        def btn_confirmar_gravar_lista()                $sessao_sap_gui.findById("wnd[1]/tbar[0]/btn[0]")                   end

        # Popup escolher diretorio e nome do arquivo
        def txt_caminho_arquivo()                       $sessao_sap_gui.findById("wnd[1]/usr/ctxtDY_PATH")                  end
        def txt_nome_arquivo()                          $sessao_sap_gui.findById("wnd[1]/usr/ctxtDY_FILENAME")              end
        def btn_gerar_arquivo()                         $sessao_sap_gui.findById("wnd[1]/tbar[0]/btn[0]")                   end
        def btn_substituir_arquivo()                    $sessao_sap_gui.findById("wnd[1]/tbar[0]/btn[11]")                  end
    end
end