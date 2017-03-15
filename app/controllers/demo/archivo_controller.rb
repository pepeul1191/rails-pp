class Demo::ArchivoController < ApplicationController
	def index
    	#logeado
      	tiempo
		@modulo = 'Demo'
      	@js = [ 'assets/demo/archivo/js/index']
       @css = [ 'assets/demo/archivo/css/index']
    end

    def upload
    	file = params[:myFile]
    	nombre = params[:nombre]
    	descripcion = params[:descripcion]

    	rpta = send_file('http://localhost:3001/archivo/recibir/?nombre=' + nombre.to_s + '&descripcion=' + descripcion.to_s, file.tempfile.path())
    	render :text => rpta
    end

    def guardar
      demo = params[:demo]

      puts "1 ++++++++++++++++++++++++++++++++++++++++++++++"
      puts demo
      puts "2 ++++++++++++++++++++++++++++++++++++++++++++++"
      #rpta = send_file('http://localhost:3002/archivo/recibir/?nombre=' + nombre.to_s + '&descripcion=' + descripcion.to_s, file.tempfile.path())
      post('http://localhost:3002/demo/guardar/?demo=' + demo)
      render :text => "rpta"
    end
end
