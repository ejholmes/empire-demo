require 'sinatra'
$stdout.sync = true

class App < Sinatra::Base
  get '/' do
    'hello'
  end
end

run App
