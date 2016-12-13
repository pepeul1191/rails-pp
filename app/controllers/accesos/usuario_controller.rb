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
        render template: 'accesos/usuario/accesos.html.erb', layout: 'modal'
    end

    def listar_accesos
        usuario_id = params[:usuario_id]
        render :text => get(Url.service('accesos') + "usuario/listar_accesos/" + usuario_id)
    end
end
