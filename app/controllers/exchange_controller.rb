class ExchangeController < ApplicationController

  def pick_currency
    exchange_raw_string = open("https://api.exchangerate.host/symbols").read
    exchange_JSON = JSON.parse(exchange_raw_string)
    key_data = exchange_JSON.fetch("symbols")
    

    @array_of_currencies = []
    @array_of_currencies = key_data.keys

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