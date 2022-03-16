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

  cart_data @cart_list
  
  erb :cart
end

post '/order' do
  cart_list = params[:client_order]

  cart_data cart_list

  order = ""
  total_price = 0

  @cart_arr.each do |item|
    order << item[0].title + " - " + item[1] + "; "
    total_price += item[0].price.to_f * item[1].to_f
  end

  erb "#{order} #{total_price}"
end

def cart_data cart_list
  cart = cart_list.split(",")

  @cart_arr = []

  cart.each do |x|
    x = x.split("_")
    x = x[1].split(":")
    @cart_arr << x
  end

  @cart_arr.each do |item|
    item[0] = Product.find(item[0])
  end
end
