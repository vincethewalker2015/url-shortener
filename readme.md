# URL shortening service

## To Set Up:
  ### For this app to work you need to Install Sinatra and Curl (If not installed)

  `` gem install sinatra``
  ``brew install curl``

  #### To Start the Server 
  `` run: ruby app.rb ``
  ##### On My machine I am using port 4567
  ``localhost:4567``

  ## To Create a shortened URL
  * For example = makeitcheaper in the terminal
  `` run curl localhost:4567 --data "url=makeitcheaper.com" -X POST ``
  * this will create a short code (In the terminal) - Copy it
  * Open a browser window and paste the URL

  

  ### Steps taken to build this app:
  * In app.rb added a 'Hello World' message to check the message can be seen in the Browser

  ##### In app.rb - Created 3 Routes
  * 2 gets one post
  * The Post request would add the url
  ##### Test it out using Curl
  ``curl localhost:4567 --data "url=http://www.makeitcheaper.com" -X POST``
  ##### This gave the result
  ``New URL added: http://www.makeitcheaper.com``

  ##### Started looking to map this URL
  * Created URL Shortener Methods 
  * Installed Pstore as a simple database
    ``gem install pstore`` and
    ``require pstore``

