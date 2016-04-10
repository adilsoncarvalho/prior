#!/usr/local/bin/ruby
require 'sinatra'
require 'time'

get '/' do
  "Hello, #{ENV['BOGUS_NAME']}!"
end

get '/version' do
  '1.0'
end

get '/_ah/start' do
  "Started at #{Time.now}"
end

get '/_ah/stop' do
  "Stopped at #{Time.now}"
end

get '/_ah/health' do
  "Healthy at #{Time.now}"
end
