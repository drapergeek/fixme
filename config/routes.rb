Fixme::Application.routes.draw do
  resources :articles, only: [:index, :create]
  root to: 'high_voltage/pages#show', id: 'home'
end
