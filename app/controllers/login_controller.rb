class LoginController < ApplicationController
  layout 'blank'

  def index
      if session[:estado] == 'autenticado'
          redirect_to Url.base_url + 'home'
      else
          @statics = Statics.new(false, 'login')
          @css = ['assets/login/css/index']
          @title = 'Login'
          render 'index'
      end
  end

  def acceder
      usuario = params[:usuario]
      contrasenia = post(Url.service('cipher') + 'encode?key=' + $cipher_key + '&texto=' + params[:contrasenia])
      rpta = post(Url.service('accesos') + "usuario/validar?usuario=" + usuario + "&contrasenia=" + contrasenia)  
      if rpta.to_str  == "1"
          session[:estado] = 'autenticado'
          session[:usuario] = usuario
          session[:tiempo] = Time.now.strftime('%Y-%m-%d %H:%M:%S')

          redirect_to Url.base_url + 'home'
      else
          @statics = Statics.new(false, 'login')
          @css = ['assets/login/css/index']
          @title = 'Login'
          @mensaje = true

          render 'index'
      end
  end

  def ver
      rpta = 'usuario : ' + session[:usuario] + '</br>' + 'estado : ' + session[:estado] + '</br>' + 'tiempo : ' + session[:tiempo]
      render :text => rpta.html_safe
  end

  def cerrar
      reset_session
       redirect_to Url.base_url + 'login'
  end
end
