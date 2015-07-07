require 'faraday'
require 'faraday_middleware'

class Client
  def initialize
    @client = Faraday.new('http://api') do |builder|
      builder.response :json
      builder.request  :json
      builder.response :raise_error
      builder.adapter Faraday.default_adapter
    end
  end

  def todos
    @client.get '/todos'
  end

  def create_todo(params)
    @client.post '/todos', text: params[:text]
  end

  def delete_todo(id)
    @client.delete "/todos/#{id}"
  end

  def complete_todo(id)
    @client.post "/todos/#{id}/complete"
  end

  def uncomplete_todo(id)
    @client.delete "/todos/#{id}/complete"
  end
end
