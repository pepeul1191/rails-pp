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

    # accesos
    # accesos / item
    get '/accesos' => 'accesos#index'
    get '/accesos/item/listar/:subtitulo_id' => 'accesos/item#listar'
    post '/accesos/item/guardar' => 'accesos/item#guardar'
    # accesos / menu
    get '/accesos/menus' => 'accesos/menu#index'
    get '/accesos/menu/menu_modulos' => 'accesos/menu#menu_modulos'
    # accesos / modulo
    get '/accesos/modulo/listar' => 'accesos/modulo#listar'
    post '/accesos/modulo/guardar' => 'accesos/modulo#guardar'
    # accesos / permiso
    get '/accesos/permisos' => 'accesos/permiso#index'
    get '/accesos/permiso/listar' => 'accesos/permiso#listar'
    post '/accesos/permiso/guardar' => 'accesos/permiso#guardar'
    get '/accesos/permiso/listar_asociados/:id' => 'accesos/permiso#listar_asociados'
    # accesos / rol
    get '/accesos/roles' => 'accesos/rol#index'
    get '/accesos/roles' => 'accesos/rol#index'
    get '/accesos/rol/listar' => 'accesos/rol#listar'
    post '/accesos/rol/guardar' => 'accesos/rol#guardar'
    post '/accesos/rol/asociar_permisos' => 'accesos/rol#asociar_permisos'
    # accesos / subtitulo
    get '/accesos/subtitulo/listar/:modulo_id' => 'accesos/subtitulo#listar'
    post '/accesos/subtitulo/guardar' => 'accesos/subtitulo#guardar'
    # accesos / usuario
    get '/accesos/usuarios' => 'accesos/usuario#index'
    get '/accesos/usuario/editar_usuario' => 'accesos/usuario#editar'
    get '/accesos/usuario/ver_roles_permisos' => 'accesos/usuario#ver_roles_permisos'
    get '/accesos/usuario/listar' => 'accesos/usuario#listar'
    get '/accesos/usuario/listar_permisos/:usuario_id' => 'accesos/usuario#listar_permisos'
    get '/accesos/usuario/listar_roles/:usuario_id' => 'accesos/usuario#listar_roles'
    post '/accesos/usuario/asociar_permisos' => 'accesos/usuario#asociar_permisos'
    post '/accesos/usuario/asociar_roles' => 'accesos/usuario#asociar_roles'
    get '/accesos/usuario/ver_accesos' => 'accesos/usuario#ver_accesos'
    get '/accesos/usuario/listar_accesos/:usuario_id' => 'accesos/usuario#listar_accesos'

    # maestros
    # maestros / vulnerabilidad
    get '/maestros/vulnerabilidades' => 'maestros/vulnerabilidades#index'
    get '/maestros/vulnerabilidades/nuevo' => 'maestros/vulnerabilidades#nuevo'

    get '/seguridad' => 'home#index'

    # demos
    get 'demo/archivos' => 'demo/archivo#index'
    post 'demo/archivo/upload' => 'demo/archivo#upload'

    #namespace "/maestros" do
      #resources :vulnerabilidades
    #end

    #match 'controller(/:action(/:id))', :via => :get
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #get '*unmatched_route' => 'application#not_found'
end
