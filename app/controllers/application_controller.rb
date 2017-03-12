class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception

  before_filter :set_header

  def set_header
      response.set_header('server', 'ruby')
  end

  def not_found
      redirect_to Url.base_url + 'error/access/404'
  end

  def send_file(url, path_to_file)
    RestClient.post(url, :name_of_file_param => File.new(path_to_file))
  end

  private
  def get(url)
      response = HTTParty.get(URI.encode(url))
      response.body
  end

  private
  def post(url)
      response = HTTParty.post(URI.encode(url))
      response.body
  end

  private
  def acl(x,y)
    if Acl.acceso(x,y) == false
        #redireccionar a un error que diga que no tiene los permisos para acceder a ese controlador
        redirect_to 'http://ulima.edu.pe'
    end
  end

  private
  def logeado
    if !Session.logeado(session)
        #redireccionar a un error que diga que debe estar logueado
        redirect_to Url.base_url + 'error/access/5051'
    end
  end

  private
  def tiempo
    if Session.tiempo != true
        #redireccionar a un error que diga que caducó el tiempo de la sesión
        redirect_to Url.base_url + 'error/access/8080'
    end
  end
end
