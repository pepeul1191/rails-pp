module ApplicationHelper
    def load_css
        rpta = ''
        if defined? @css
           @css.each do |n|
               temp = '<link href="' + Statics.url + n + '.css" rel="stylesheet"/>'
               rpta = rpta + temp
           end
       end
       rpta.html_safe
    end

    def load_js
        rpta = ''
        if defined? @js
           @js.each do |n|
               temp = '<script src="' + Statics.url + n + '.js" type="text/javascript"></script>'
               rpta = rpta + temp
           end
       end
       rpta.html_safe
    end

    def load_modal_css
        rpta = ''
        if defined? @modal_css
           @modal_css.each do |n|
               temp = '<link href="' + Statics.url + n + '.css" rel="stylesheet"/>'
               rpta = rpta + temp
           end
       end
       rpta.html_safe
    end

    def load_modal_js
        rpta = ''
        if defined? @modal_js
           @modal_js.each do |n|
               temp = '<script src="' + Statics.url + n + '.js" type="text/javascript"></script>'
               rpta = rpta + temp
           end
       end
       rpta.html_safe
    end

    def menu_izquierdo(modulo)
        response = HTTParty.get(URI.encode(Url.service('accesos') + "item/listar/menu/" + modulo.to_s))
        rpta = response.body
        menus_izq = JSON.parse(rpta)
        rpta = ""

        for menu in menus_izq
            rpta = rpta + "<h5>" + menu['subtitulo'] + "</h5>"
            rpta = rpta + "<ul>"
            for item in menu['items']
                rpta = rpta + "<li><a href='"+ Url.base_url + item['url'] + "'>" + item['item'] + "</a></li>"
            end
            rpta = rpta + "</ul>"
        end
        
        rpta.html_safe
    end

    def menu_modulos(modulo)
        response = HTTParty.get(URI.encode(Url.service('accesos') + "modulo/listar"))
        rpta = response.body
        menus_hor = JSON.parse(rpta)
        rpta = ""

        for menu in menus_hor
            if modulo == menu['nombre']
              rpta = rpta + "<li class='activo'><a href='" + Url.base_url + menu['url'] + "'>" + menu['nombre']+ "</a></li>"
            else
              rpta = rpta + "<li><a href='" + Url.base_url + menu['url'] + "'>" + menu['nombre']+ "</a></li>"
            end
        end
        
        rpta.html_safe
    end
end
