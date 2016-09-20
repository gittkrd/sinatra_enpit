require 'sinatra'

get '/' do
  @title = "main index" 
  @content = "main content"
  erb :index
end

get '/about' do 
  @title = "about this page" 
  @content = "this page is ..."
  @mail = "xxx@gmail.com"
  erb :about
end
