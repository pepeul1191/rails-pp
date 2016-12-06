class Accesos::MenuController < ApplicationController
    def index
    	#logeado
      	tiempo
		@modulo = 'Accesos'
      	@css = ['swp/css/mootools.grid']
      	@js = ['swp/js/mootools.dao', 'swp/js/mootools.form', 'swp/js/mootools.observer', 'swp/js/mootools.grid', 'swp/js/mootools.chain', 'assets/accesos/menu/js/index']
    end
end
