class Accesos::ModuloController < ApplicationController
	def listar  
		#logeado_text
      	#tiempo_text
		render :text => get(Url.service('accesos') + "modulo/listar")
	end

	def guardar
		data = params[:data]
		render :text => post(Url.service('accesos') + "modulo/guardar?data=" + data)
	end
end
