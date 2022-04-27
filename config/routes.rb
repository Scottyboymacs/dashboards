Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "application", :action => "homepage" })
  get("/forex", { :controller => "exchange", :action => "pick_currency"})
  get("/forex/:first_currency", { :controller => "exchange", :action => "pairings" })
  get("/forex/:first_currrecy/:second_currency", { :controller => "exchange", :action => "converter" })
  

end
