class AccesosController < ApplicationController
    def index        
		logeado
      	tiempo
      	@modulo = 'Accesos'
    end

    def menu
        rpta = 'AccesosController#menu'
        render :text => rpta
    end
end
