require 'yaml'

class ConfiguracaoAcessos
  def self.[] key
    @@config[key]
  end

  def self.load name
    @@config = nil
    io = File.open( File.dirname(__FILE__) + "/acessos.yml" )
    YAML::load_documents(io) { |doc| @@config = doc[name] }
    raise "Não foi possível encontrar o nome da configuração: \"#{name}\"" unless @@config
  end

  def self.[]= key, value
    @@config[key] = value
  end
end

ConfiguracaoAcessos.load("dev") # Dev, hml ou prod

