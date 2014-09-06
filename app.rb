require 'sinatra'
require 'slim'

class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    @link = ""
    @code = ""
    slim :index
  end

  post '/' do
    @link = @params[:link]
    @code = @params[:link]
    slim :index
  end
end
