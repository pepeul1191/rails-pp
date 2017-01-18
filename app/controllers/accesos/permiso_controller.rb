class Accesos::PermisoController < ApplicationController
	 def index
    	logeado
      	tiempo
       @title = 'Gestión de Permisos'
		@modulo = 'Accesos'
        @css = ['bower_components/swp-plugins/assets/css/mootools.grid']
        @js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/permiso/js/index']
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

    def listar_asociados
       id_rol = params[:id]
       render :text => get(Url.service('accesos') + "permiso/listar_asociados/" +id_rol)
    end
end
