class Accesos::RolController < ApplicationController
	 def index
    	logeado
      	tiempo
       @title = 'Gestión de Roles'
		@modulo = 'Accesos'
        @css = ['bower_components/swp-plugins/assets/css/mootools.grid']
        @js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/rol/js/index']
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
