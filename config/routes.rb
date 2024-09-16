Rails.application.routes.draw do
  # Define a rota raiz para o index do controlador Posts
  root "posts#index"

  resources :posts do
    # Define rotas aninhadas para comentários dentro de posts
    resources :comentarios, only: [:new, :create]
  end

  # Outras rotas, se houver
end
