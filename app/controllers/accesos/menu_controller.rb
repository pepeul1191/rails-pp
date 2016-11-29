class Accesos::MenuController < ApplicationController
    def index
    	logeado
      	tiempo
       @title = 'Gestión de Accesos'
		@modulo = 'Accesos'
    end
end
