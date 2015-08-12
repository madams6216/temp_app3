class HomeController < ApplicationController
  def index
  end

  def convert

  	fahrenheit = params[:fahrenheit]

  	fahrenheit = fahrenheit.to_f

  	celsius = convert_to_celsius(fahrenheit)

  	celsius = celsius.round

  	message = "the celsius result is #{celsius}"

  	@message = message

  end

   def convert_to_celsius(fahrenheit)

  		celsius = (fahrenheit - 32) * 5.0 / 9.0

  		return celsius
  	end
end
