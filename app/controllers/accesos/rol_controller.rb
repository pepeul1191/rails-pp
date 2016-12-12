class Accesos::RolController < ApplicationController
	 def index
    	logeado
      	tiempo
       @title = 'Gestión de Roles'
		@modulo = 'Accesos'
      	@css = ['swp/css/mootools.grid']
      	@js = ['swp/js/mootools.dao', 'swp/js/mootools.form', 'swp/js/mootools.observer', 'swp/js/mootools.grid', 'swp/js/mootools.chain', 'assets/accesos/roles/js/index']
    end

    def listar
    	#logeado_text
      	#tiempo_text
		render :text => get(Url.service('accesos') + "rol/listar")
    end

    def guardar
		data = params[:data]
		render :text => post(Url.service('accesos') + "rol/guardar?data=" + data)
	end

    def asociar_permisos
        data = params[:data]
        render :text => post(Url.service('accesos') + "rol/ascociar_permisos?data=" + data)
    end
end
