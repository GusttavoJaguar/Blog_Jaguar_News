Rails.application.routes.draw do
  # Define a rota raiz para o index do controlador Posts

  resources :posts do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :comentarios, only: [:new, :create]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Defines the root path route ("/")
  # root "posts#index"
  end
end
