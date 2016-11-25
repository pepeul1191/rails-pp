class HomeController < ApplicationController
  def index
      logeado
      tiempo
      @title = 'Home'
  end
end
