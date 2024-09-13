require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Configurações que substituem as de config/application.rb

  # Recarregar o código quando ele mudar
  config.enable_reloading = true

  # Não fazer eager load do código no boot
  config.eager_load = false

  # Mostrar relatórios de erro completos
  config.consider_all_requests_local = true

  # Habilitar cache
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Armazenar arquivos carregados localmente
  config.active_storage.service = :local

  # Configurações do mailer
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.example.com",
    port: 587,
    user_name: "username",
    password: "password",
    authentication: "plain",
    enable_starttls_auto: true
  }

  # Impressão de avisos de descontinuação no log
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  # Erros em migrações pendentes
  config.active_record.migration_error = :page_load

  # Destaque para consultas ao banco de dados no log
  config.active_record.verbose_query_logs = true

  # Destaque para trabalho em background no log
  config.active_job.verbose_enqueue_logs = true

  # Suprimir saída do log para solicitações de ativos
  config.assets.quiet = true

  # Permitir traduções ausentes
  # config.i18n.raise_on_missing_translations = true

  # Anotar visualizações renderizadas com nomes de arquivos
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Permitir Action Cable de qualquer origem
  # config.action_cable.disable_request_forgery_protection = true
end
