class HomeController < ApplicationController

  def index
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "ETH", "SHIB", "MANA", "CRO"]

    #@my_coins = @coins.values[1]
    
    #@my_coins = ["symbol"][0-141]
    # ['symbol'][0-141]
    #["BTC", "ETH", "SHIB", "MANA", "CRO"]
    # ['cmc_rank'][1-100]
  end

  def about
  end

  def search
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @search_coin = JSON.parse(@response)
    
    @symbol = params[:sym] 
    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "Please enter a cryptocurrency to search."
    end

  end
  
  def search_stocks
  end
end