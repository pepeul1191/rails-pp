class Accesos::MenuController < ApplicationController
    def index
        @title = 'Gestión de Accesos'
        @modulo = 'Accesos'
    end

    def menu_modulos
        render :text=> get(Url.service('accesos') + 'menu/menu_modulos')
    end
end
