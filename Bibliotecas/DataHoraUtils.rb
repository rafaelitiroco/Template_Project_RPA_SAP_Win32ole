def obter_data_hora
    data__hora = Time.now
    data__hora
end

def obter_mes_ano_do_mes_passado
    require 'date'
    mes = Time.now.strftime('%m').to_i
    ano = Time.now.strftime('%Y').to_i

    # mes -= 1
    #mes = 1     #Forçando os dados a serem pegos de JAN/2018
    if mes == 0
        mes = 12
        ano -= 1
    end

    case mes
        when 1
            nome_mes = "JAN"
        when 2
            nome_mes = "FEV"
        when 3
            nome_mes = "MAR"
        when 4
            nome_mes = "ABR"
        when 5
            nome_mes = "MAI"
        when 6
            nome_mes = "JUN"
        when 7
            nome_mes = "JUL"
        when 8
            nome_mes = "AGO"
        when 9
            nome_mes = "SET"
        when 10
            nome_mes = "OUT"
        when 11
            nome_mes = "NOV"
        when 12
            nome_mes = "DEZ"
        end

    return "#{nome_mes}/#{ano.to_s}"
end