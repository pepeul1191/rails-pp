class Accesos::UsuarioController < ApplicationController
	def index
    	logeado
      	tiempo
       @title = 'Gestión de USuarios'
		@modulo = 'Accesos'
      	@css = ['swp/css/mootools.grid']
      	@js = ['swp/js/mootools.dao', 'swp/js/mootools.form', 'swp/js/mootools.observer', 'swp/js/mootools.grid', 'swp/js/mootools.chain', 'assets/accesos/usuarios/js/index']
    end

    def listar
    	#logeado_text
      	#tiempo_text
		render :text => get(Url.service('accesos') + "usuario/listar")
    end

    def ver_accesos
        @titulo_modal = 'Ver Accesos'
        @modal_js = ['assets/accesos/usuarios/js/accesos']
        render template: 'accesos/usuario/accesos.html.erb', layout: 'modal_small'
    end

    def listar_accesos
        usuario_id = params[:usuario_id]
        render :text => get(Url.service('accesos') + "usuario/listar_accesos/" + usuario_id)
    end

    def ver_roles_permisos
       usuario_id = params[:usuario_id]
       @modal_js = ['assets/accesos/usuarios/js/roles_permisos']
       @titulo_modal = 'Gestione los Roles y Permisos del Usuario'
       render template: 'accesos/usuario/roles_permisos.html.erb', layout: 'modal_large'
    end

    def listar_permisos
       usuario_id = params[:usuario_id]
       render :text => get(Url.service('accesos') + "usuario/listar_permisos/" + usuario_id)
    end

    def asociar_permisos
        data = params[:data]
        render :text => post(Url.service('accesos') + "usuario/asociar_permisos?data=" + data)
    end

    def listar_roles
       usuario_id = params[:usuario_id]
       render :text => get(Url.service('accesos') + "usuario/listar_roles/" + usuario_id)
    end

    def asociar_roles
        data = params[:data]
        render :text => post(Url.service('accesos') + "usuario/asociar_roles?data=" + data)
    end

    def editar
        @titulo_modal = 'Editar Usuario'
        @modal_js = ['assets/accesos/usuarios/js/usuario']
        render template: 'accesos/usuario/usuario.html.erb', layout: 'modal_medium'
    end
end
