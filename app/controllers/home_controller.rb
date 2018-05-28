class HomeController < ApplicationController


  def index
    @coin = Coin.new
  end


end