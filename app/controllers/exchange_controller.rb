class CurrencyController < ApplicationController

  def pairings
    @first_currency  = params.fetch("first_currency")

    
  end

  def converter
    @first_currency  = params.fetch("first_currency")
    @second_currency  = params.fetch("second_currency")


  end


end