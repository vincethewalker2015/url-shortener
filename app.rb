require 'sinatra'


class MyApp < Sinatra::Base
  # get '/' do
  #   "Hello, Great new world!"
  # end

  get '/:url' do
    "The URL is #{params[:url]}"
  end
  get '/' do
    "Send a POST request to register a new URL."
  end
  post '/' do
    "New URL added: #{params[:url]}\n"
  end

end

