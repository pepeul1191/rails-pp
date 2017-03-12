class Demo::ArchivoController < ApplicationController
	def index
    	#logeado
      	tiempo
		@modulo = 'Demo'
      	@js = [ 'assets/demo/archivo/js/index']
    end

    def upload
    	puts "1 +++++++++++++++++++++++++++++++++++++++++++++++++++++"
    	file = params[:myFile]
    	data = params[:myData]
    	#puts file.inspect
    	puts "2 +++++++++++++++++++++++++++++++++++++++++++++++++++++"
    	#puts file.inspect
    	puts "3 +++++++++++++++++++++++++++++++++++++++++++++++++++++"

    	send_file('http://localhost:3001/archivo/recibir', '/tmp/RackMultipart20170312-8916-9jicmq.png')
    	render :text => "HOLAAAAAAAAAAAAAA"
    end
end
