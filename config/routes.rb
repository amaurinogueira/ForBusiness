Rails.application.routes.draw do
  resources :comentarios
  resources :vencimento_tarefas
  resources :tarefas
  resources :colaboradors
  resources :setors
  resources :empresas
  resources :fatos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
