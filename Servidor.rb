require 'sinatra/base'
require 'time'

class MeuApp < Sinatra::Base
  set :port, 8080
  set :bind, '0.0.0.0'

  get '/' do
    ip = request.ip
    user_agent = request.user_agent
    hora = Time.now.strftime("%Y-%m-%d %H:%M:%S")

    puts "\n💻 Novo acesso recebido:"
    puts "🌐 IP: #{ip}"
    puts "🧠 Navegador: #{user_agent}"
    puts "⏱️  Hora: #{hora}"
    puts "------------------------------"

    "<h2>Obrigado por acessar!</h2><p>Seu IP foi registrado com sucesso.</p>"
  end

  run! if app_file == $0
end
