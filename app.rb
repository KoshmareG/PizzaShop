require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.db"}

class Product < ActiveRecord::Base
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

post '/cart' do
  @cart_list = params[:orders]

  cart = @cart_list.split(",")

  @cart_arr = []

  cart.each do |x|
    x = x.split("_")
    x = x[1].split(":")
    @cart_arr << x
  end

  @cart_arr.each do |item|
    item[0] = Product.find(item[0])
  end
  
  erb :cart
end

post '/order' do
  erb "Заказ"

  #erb :order
end
