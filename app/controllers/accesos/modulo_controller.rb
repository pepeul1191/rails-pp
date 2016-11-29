class Accesos::ModuloController < ApplicationController
	def listar  
		#logeado_text
      	#tiempo_text
		render :text => get(Url.service('accesos') + "modulo/listar")
	end

	def guardar
		
	end
end
