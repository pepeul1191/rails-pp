class Accesos::MenuController < ApplicationController
    def index
    	#logeado
      	tiempo
		@modulo = 'Accesos'
      	@css = ['bower_components/swp-plugins/assets/css/mootools.grid']
      	@js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/menu/js/index']
    end
end
