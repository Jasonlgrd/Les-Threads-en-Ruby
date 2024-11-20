require 'sinatra'

get '/index' do
  sleep 3
  status 200
  'OK'
end

get '/about' do
  sleep 2
  status 200
  'OK'
end

get '/contact' do
  sleep 4
  status 200
  'OK'
end

get '/products' do
  sleep 2
  status 200
  'OK'
end

get '/test' do
  sleep 2
  status 200
  'OK'
end

get '/fast' do
  sleep 4
  status 200
  'OK'
end