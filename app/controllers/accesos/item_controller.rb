class Accesos::ItemController < ApplicationController
    def listar
       subtitulo_id = params[:subtitulo_id]
		render :text => get(Url.service('accesos') + "item/listar/" + subtitulo_id.to_s)
    end
end
