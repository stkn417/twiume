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

    @code = "<blockquote class=\"twitter-tweet\" lang=\"ja\"><a href=\"" + @link + "\"></a></blockquote>
<script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>"

    slim :index
  end
end
