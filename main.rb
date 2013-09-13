# main.rb
require 'sinatra'
require 'httparty'
require 'json'
require 'active_support/all'


get '/film' do
  if params[:title]
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    @hash = JSON(html)
  end
  erb :find_film
end

get '/film/faq' do
  erb :faq
end

get '/film/About' do
  erb :about
end















