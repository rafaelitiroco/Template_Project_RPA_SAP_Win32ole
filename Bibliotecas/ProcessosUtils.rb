########################################################################################################################
# WIN32OLE
########################################################################################################################
def fecha_processos(processo)
    wmi = WIN32OLE.connect("winmgmts://")
    processos = wmi.ExecQuery("Select * from Win32_Process Where NAME = '#{processo}'")
    processos.each do | proc |
        begin
            Process.kill('KILL', proc.ProcessID.to_i) #if proc.execMethod_('GetOwner').User.downcase == Etc.getlogin.downcase
        rescue
            puts "WMI - Não foi possível encerrar o processo '#{processo}'"
        end
    end
end