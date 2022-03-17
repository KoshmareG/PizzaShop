require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

get '/admin' do
  erb :admin
end

post '/cart' do
  @cart_list = params[:orders]

  cart_data @cart_list
  
  erb :cart
end

post '/order' do
  cart_list = params[:client_order]
  @client_order = params[:client_data]

  cart_data cart_list

  order_list = ""
  total_price = 0

  @cart_arr.each do |item|
    order_list << item[0].title + " - " + item[1] + "; "
    total_price += item[0].price.to_f * item[1].to_f
  end

  @client_order[:order] = order_list
  @client_order[:total_price] = total_price.to_s
  add_client_order = Order.new @client_order
  add_client_order.save

  erb :order
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
