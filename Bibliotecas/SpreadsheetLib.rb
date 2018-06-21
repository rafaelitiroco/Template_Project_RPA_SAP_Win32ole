module SpreadsheetUtils
    class XLS
        ########################################################################################################################
        # Métodos relacionados a execução do excel
        ########################################################################################################################
        def inicializar_processo_excel
            begin
                excel = WIN32OLE.connect('excel.application')
            rescue
                excel = WIN32OLE.new('excel.application')
            end
            excel
        end

        def encerrar_processo_excel(excel)
            begin
                excel.Quit
                excel.ole_free
                excel.ole_free
                true
            rescue
                puts "ERRO Excel - Não foi encerrar o processo excel"
                false
            end
        end

        ########################################################################################################################
        # Métodos relacionados ao arquivo excel
        ########################################################################################################################
        def abrir_arquivo(excel, caminho_arquivo)
            raise "ERRO Excel - Arquivo '#{caminho_arquivo}' não encontrado" unless File.exist? caminho_arquivo
            
            excel.visible = true
            wb = excel.Workbooks.Open(caminho_arquivo)
            wb
        end

        ########################################################################################################################
        # Métodos relacionados a aba
        ########################################################################################################################
        def ativar_planilha(xls_wb, xls_ws)
            ws = xls_wb.WorkSheets(xls_ws)
            ws.activate
            ws        
        end

        def ativar_aba(xls_ws)
            xls_ws.activate
            xls_ws   
        end

        def criar_aba(xls_wb)
            novo_ws = xls_wb.Worksheets.Add
            novo_ws
        end

        def deletar_aba(ws, excel="")
            excel.DisplayAlerts = false unless excel == ""
            ws.delete
            excel.DisplayAlerts = true unless excel == ""
        end

        ########################################################################################################################
        # Métodos relacionados a linhas e colunas
        ########################################################################################################################
        def deletar_coluna(xls_ws, coluna)
            resultado = xls_ws.Columns(coluna).Delete
            resultado
        end

        def deletar_linha(xls_ws, linha)
            resultado = xls_ws.Rows(linha).Delete
            resultado
        end

        ########################################################################################################################
        # Métodos relacionados a celulas
        ########################################################################################################################

        def obter_valor_da_celula(xls_wb="", xls_ws, linha, coluna)
            ws = (xls_wb == "") ? xls_ws : xls_wb.WorkSheets(xls_ws)
            valor_celula = ws.Cells(linha, coluna).value
            valor_celula
        end

        def escrever_na_celula(xls_wb, xls_ws, linha, coluna, texto_da_celula)
            ws = xls_wb.WorkSheets(xls_ws)
            ws.Cells(linha, coluna).value = texto_da_celula
        end

        def ordenar_conjunto_pela_coluna(xls_wb, xls_ws, conjunto_a_ordenar, coluna_do_conjunto_a_ordenar, ordem)
            ws = xls_wb.WorkSheets(xls_ws)
            ws.activate                    
            
            ws_conjunto_a_ordenar = conjunto_a_ordenar.split(":")
            ws.Range("#{ws_conjunto_a_ordenar[0]}:#{ws_conjunto_a_ordenar[1]}").Sort(ws.Range("#{coluna_do_conjunto_a_ordenar}"), ordem)            
        end

        def obter_valores_unicos_em_array(xls_ws, linha_inicial, coluna_validacao, coluna_comparacao=coluna_validacao)
            array_valores_unicos = Array.new
            linha = linha_inicial
            loop do
                linha += 1
                break if xls_ws.Cells(linha, coluna_validacao).value.nil?
                next if xls_ws.rows(linha).RowHeight == 0
                
                valor_a_ser_analisado = xls_ws.Cells(linha, coluna_comparacao).value.to_i
                array_valores_unicos << valor_a_ser_analisado if array_valores_unicos.size == 0
                    
                valor_a_ser_analisado_ja_existe = false
                array_valores_unicos.each do | valor_array |
                    next unless valor_a_ser_analisado == valor_array
                    valor_a_ser_analisado_ja_existe = true
                    break
                end
                array_valores_unicos << valor_a_ser_analisado unless valor_a_ser_analisado_ja_existe
            end
            array_valores_unicos
        end

        def escrever_valor_em_range(xls_ws, range, celulas_visiveis=true)
            array_valores_unicos = Array.new
            linha = linha_inicial
            loop do
                linha += 1
                break if xls_ws.Cells(linha, coluna_validacao).value.nil?
                
                valor_a_ser_analisado = xls_ws.Cells(linha, coluna_comparacao).value.to_i
                array_valores_unicos << valor_a_ser_analisado if array_valores_unicos.size == 0
                    
                valor_a_ser_analisado_ja_existe = false
                array_valores_unicos.each do | valor_array |
                    next unless valor_a_ser_analisado == valor_array
                    valor_a_ser_analisado_ja_existe = true
                    break
                end
                array_valores_unicos << valor_a_ser_analisado unless valor_a_ser_analisado_ja_existe
            end
            array_valores_unicos
        end
    end
end