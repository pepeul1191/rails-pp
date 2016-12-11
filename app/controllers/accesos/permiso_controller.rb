class Accesos::PermisoController < ApplicationController
	 def index
    	logeado
      	tiempo
       @title = 'Gestión de Permisos'
		@modulo = 'Accesos'
      	@css = ['swp/css/mootools.grid']
      	@js = ['swp/js/mootools.dao', 'swp/js/mootools.form', 'swp/js/mootools.observer', 'swp/js/mootools.grid', 'swp/js/mootools.chain', 'assets/accesos/permisos/js/index']
    end

    def listar
    	#logeado_text
      	#tiempo_text
		render :text => get(Url.service('accesos') + "permiso/listar")
    end

    def guardar
		data = params[:data]
		render :text => post(Url.service('accesos') + "permiso/guardar?data=" + data)
	end
end
