class Accesos::SubtituloController < ApplicationController
	def listar  
		#logeado_text
      	#tiempo_text
      	modulo_id = params[:modulo_id]
		render :text => get(Url.service('accesos') + "subtitulo/listar/" + modulo_id.to_s)
	end

	def guardar
		data = params[:data]
		render :text => post(Url.service('accesos') + "subtitulo/guardar?data=" + data)
	end
end
