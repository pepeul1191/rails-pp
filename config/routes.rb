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

    get '/accesos' => 'accesos#index'
    get '/accesos/item/listar/:subtitulo_id' => 'accesos/item#listar'
    post '/accesos/item/guardar' => 'accesos/item#guardar'
    get '/accesos/menus' => 'accesos/menu#index'
    get '/accesos/menu/menu_modulos' => 'accesos/menu#menu_modulos'
    get '/accesos/modulo/listar' => 'accesos/modulo#listar'
    post '/accesos/modulo/guardar' => 'accesos/modulo#guardar'
    get '/accesos/permisos' => 'accesos/permiso#index'
    get '/accesos/permiso/listar' => 'accesos/permiso#listar'
    post '/accesos/permiso/guardar' => 'accesos/permiso#guardar'
    get '/accesos/permiso/listar_asociados/:id' => 'accesos/permiso#listar_asociados'
    get '/accesos/roles' => 'accesos/rol#index'
    get '/accesos/roles' => 'accesos/rol#index'
    get '/accesos/rol/listar' => 'accesos/rol#listar'
    post '/accesos/rol/guardar' => 'accesos/rol#guardar'
    post '/accesos/rol/asociar_permisos' => 'accesos/rol#asociar_permisos'
    get '/accesos/subtitulo/listar/:modulo_id' => 'accesos/subtitulo#listar'
    post '/accesos/subtitulo/guardar' => 'accesos/subtitulo#guardar'
    get '/accesos/usuarios' => 'accesos/usuario#index'
    get '/accesos/usuario/listar' => 'accesos/usuario#listar'
    get '/accesos/usuario/ver_accesos' => 'accesos/usuario#ver_accesos'
    get '/accesos/usuario/listar_accesos/:usuario_id' => 'accesos/usuario#listar_accesos'

    get '/maestros/vulnerabilidades' => 'maestros/vulnerabilidades#index'
    get '/maestros/vulnerabilidades/nuevo' => 'maestros/vulnerabilidades#nuevo'

    get '/seguridad' => 'home#index'

    #namespace "/maestros" do
      #resources :vulnerabilidades
    #end

    #match 'controller(/:action(/:id))', :via => :get
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #get '*unmatched_route' => 'application#not_found'
end
