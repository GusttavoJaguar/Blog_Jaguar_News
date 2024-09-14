# Configuração do Puma para a aplicação Rails

# Definição das threads mínimas e máximas
# `RAILS_MAX_THREADS` e `RAILS_MIN_THREADS` são variáveis de ambiente que definem o número de threads.
# Você pode ajustar esses valores conforme necessário.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

# Definir o ambiente da aplicação.
# `RAILS_ENV` é uma variável de ambiente que deve ser configurada para 'development', 'production', etc.
rails_env = ENV.fetch("RAILS_ENV") { "development" }
environment rails_env

# Configuração específica para o ambiente de produção
if rails_env == "production"
  # O número de workers deve geralmente ser ajustado conforme o número de núcleos da máquina/servidor
  # `WEB_CONCURRENCY` é uma variável de ambiente que define o número de workers.
  worker_count = Integer(ENV.fetch("WEB_CONCURRENCY") { 2 })
  workers worker_count
  preload_app! # Pré-carregar a aplicação para melhorar o desempenho em produção
end

# Timeout para workers no ambiente de desenvolvimento
# Isso não é necessário para produção e pode ser removido se estiver causando problemas.
worker_timeout 3600 if rails_env == "development"

# Definir a porta que o Puma vai escutar
# `PORT` é uma variável de ambiente definida pelo ambiente de implantação (como Render).
port ENV.fetch("PORT") { 3000 }

# Definir o arquivo PID para o Puma
# `PIDFILE` é uma variável de ambiente que define onde o arquivo PID será armazenado.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# Permitir que o Puma seja reiniciado com o comando `bin/rails restart`
plugin :tmp_restart
