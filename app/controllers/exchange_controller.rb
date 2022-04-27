class ExchangeController < ApplicationController

  def pick_currency
    render({:template => "exchange_templates/pick.html.erb"})

  end

  def pairings
    @first_currency  = params.fetch("first_currency")

    render({:template => "exchange_templates/pair.html.erb"})
  end 

  def converter
    @first_currency  = params.fetch("first_currency")
    @second_currency  = params.fetch("second_currency")

    render({:template => "exchange_templates/convert.html.erb"})
  end


end