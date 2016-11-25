Rails.application.routes.draw do
  root 'login#index'

  get 'demo/index'
  get 'demo/ulima'
  get 'demo' , to: 'demo#index'

  get 'error/access/:id', to: 'error#access'

  get 'home', to: 'home#index'

  get 'login', to: 'login#index'
  post 'login/acceder' => 'login#acceder'
  get 'login/ver'
  get 'login/cerrar'

  get '/accesos/menu' => 'accesos/menu#index'
  get '/accesos/menu/menu_modulos' => 'accesos/menu#menu_modulos'

  get '/maestros/vulnerabilidades' => 'maestros/vulnerabilidades#index'
  get '/maestros/vulnerabilidades/nuevo' => 'maestros/vulnerabilidades#nuevo'

  #namespace "/maestros" do
    #resources :vulnerabilidades
  #end

  #match 'controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
