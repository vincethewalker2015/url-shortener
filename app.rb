require 'sinatra'
require 'pstore'
require 'base64'

get '/:url' do
  redirect "http://" + ShortURL.read(params[:url])
end

get '/' do
  "Enter your URL using a curl POST request"
end
post '/' do
  # "New URL added: #{params[:url]}\n"
  url = generate_short_url(params[:url])
  "Your shortened URL is: #{url}\n"
end

def generate_short_url(original)
  ShortURL.save(Base64.encode64(original)[0..6], original)

 "localhost:4567/" + Base64.encode64(original)[0..6]
end

class ShortURL
  def self.save(encoded, original)
    store = PStore.new("shortened_urls.db")

    store.transaction { |t| store[encoded] = original }
  end


  def self.read(encoded)
    store.transaction { store[encoded] }
  end

  def self.store 
    @store ||= PStore.new("shortened_urls.db")
  end

end


