require 'sinatra'
require_relative './client'

$stdout.sync = true
$api = Client.new

class App < Sinatra::Base
  get '/' do
    @todos = $api.todos.body
    erb :index
  end

  post '/todos' do
    $api.create_todo text: params['text']
    redirect '/'
  end

  post '/todos/:id/delete' do
    $api.delete_todo params['id']
    redirect '/'
  end

  post '/todos/:id/complete' do
    $api.complete_todo params['id']
    redirect '/'
  end

  post '/todos/:id/uncomplete' do
    $api.uncomplete_todo params['id']
    redirect '/'
  end
end

run App
