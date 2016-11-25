module ApplicationHelper
    def load_css
        rpta = ''
        if defined? @statics.public_css
           @statics.public_css.each do |n|
               temp = '<link href="' + Statics.url + "assets/site/css/" + n + '.css" rel="stylesheet"/>'
               rpta = rpta + temp
           end
       end
        if defined? @statics.css
           @statics.css.each do |n|
               if @statics.modulo
                   temp = '<link href="' + Statics.url + 'assets/' +  @statics.modulo + '/' + @statics.controlador + '/css/' + n + '.css" rel="stylesheet" type="text/css" >'
                   rpta = rpta + temp
               else
                   temp = '<link href="' + Statics.url + 'assets/' + @statics.controlador + '/css/' + n + '.css" rel="stylesheet" type="text/css"  />'
                   rpta = rpta + temp
               end
           end
       end
       rpta.html_safe
    end

    def load_js
        rpta = ''
        if defined? @statics.public_js
           @statics.public_js.each do |n|
               temp = '<script src="' + Statics.url + "assets/site/js/" + n + '.js" type="text/javascript"></script>'
               rpta = rpta + temp
           end
       end
        if defined? @statics.js
           @statics.js.each do |n|
               if @statics.modulo
                   temp = '<script src="' + Statics.url + 'assets/' +  @statics.modulo + '/' + @statics.controlador + '/js/' + n + '.js" type="text/javascript"></script>"'
                   rpta = rpta + temp
               else
                   temp = '<script src="' + Statics.url + 'assets/' + @statics.controlador + '/js/' + n + '.js" type="text/javascript"></script>'
                   rpta = rpta + temp
               end
           end
       end
       rpta.html_safe
    end

    def menu_izquierdo(modulo)
        response = HTTParty.get(URI.encode(Url.service(modulo.downcase) + "menu/accesos_modulo/" + modulo.to_s))
        rpta = response.body
        menu = JSON.parse(rpta)
        descripcion = menu["descripcion"]
        subtitulos = menu["subtitulos"]
        rpta = "<p>" + descripcion + "</p>"

        for subtitulo in subtitulos
          nombre_subtitulo = subtitulo["nombre"]
          icono_subtitulo = subtitulo["icono"]
          items = subtitulo["items"]
          rpta = rpta + "<p><i class='" + icono_subtitulo + " icono-menu' aria-hidden='true'></i>" + nombre_subtitulo + "</p><ul>"
          for item in items
             #<li><a href="'tesis/alumno">Ver lista de usuarios</a></li>
             url_item = item["url"]
             nombre_item = item["nombre"]
             rpta = rpta + "<li><a href='"+ Url.base_url + url_item + "'>" + nombre_item + "</a></li>"
          end
          rpta = rpta + "</ul>"
        end
        
        rpta.html_safe
    end
end
