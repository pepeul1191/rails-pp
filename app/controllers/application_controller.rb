class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception

  def not_found
      redirect_to Url.base_url + 'error/access/404'
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
