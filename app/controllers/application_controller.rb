class ApplicationController < ActionController::Base

    def homepage
     render({:template => "homepage_templates/index.html.erb"})
    end 

end
