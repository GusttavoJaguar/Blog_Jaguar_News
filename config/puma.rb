# Definição das threads mínimas e máximas
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

# Definir o ambiente da aplicação (desenvolvimento, produção, etc.)
rails_env = ENV.fetch("RAILS_ENV") { "development" }
environment rails_env

# Configuração para ambientes de produção
if rails_env == "production"
  worker_count = Integer(ENV.fetch("WEB_CONCURRENCY") { 2 }) # Ajuste conforme o número de cores da sua máquina/servidor
  workers worker_count
  preload_app! # Pré-carregar a aplicação em produção
end

# Timeout para workers no ambiente de desenvolvimento
worker_timeout 3600 if rails_env == "development"

# Definir a porta que o Puma vai escutar (definida pela variável de ambiente PORT ou padrão 3000)
port ENV.fetch("PORT") { 3000 }

# Definir o arquivo PID (para controlar o servidor Puma)
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# Permitir que o Puma seja reiniciado com o comando `bin/rails restart`
plugin :tmp_restart
