class Accesos::PermisoController < ApplicationController
	 def index
    	logeado
      	tiempo
       @title = 'Gestión de Permisos'
		@modulo = 'Accesos'
    end
end
