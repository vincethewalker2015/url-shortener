# URL shortening service

## To Set Up:
### For this app to work you need to Install Sinatra and Curl (If not installed)

`` gem install sinatra``
``brew install curl``

#### To Start the Server 
`` run: rackup ``
##### On My machine I am using port 9292
``localhost:9292``

### Steps taken 
* Created 2 files (app.rb and config.ru)
* Created Myapp as a class and added a 'Hello World' message to check the message can be seen in the Browser

##### In app.rb - Created 3 Routes
* 2 gets one post
* The Post request would add the url
##### Test it out using Curl
``curl localhost:9292 --data "url=vincethewalker.com" -X POST``
##### This gave the result
``New URL added: vincethewalker.com``

