class ApplicationController < ActionController::Base

    def homepage
     render({:template => "/infinite.html.erb"}))
    end 

end
