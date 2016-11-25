class DemoController < ApplicationController
    def index
    end

    def ulima
        acl(10,5)
        logeado(session)

        redirect_to 'http://www.google.com.pe'
    end
end
