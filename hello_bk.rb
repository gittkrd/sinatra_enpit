require 'sinatra'

get '/:name' do |n|
  @name = n ## テンプレート(erb)で変数を使う場合は変数名に@をつける
  erb :index
end

=begin
get '/' do
  erb :index  ##erbテンプレートを使う。viewsディレクトリの下のindex.erbを表示する。
end
=end

get '/about/:name' do   ##localhost:4567/about/ でWEB表示される
  "hello, #{params[:name]}"
end

get '/about2/:name' do |n| ##|n|を使った書き方
  "hello, #{n}"
end

##パラメータ２つ
##?を後ろにつけるとあってもなくてよいという意味になる。
##/の後ろと、:lnameの後ろに?をつけてやるとエラーが出なくなる。出なくなる。
get '/about3/:fname/?:lname?' do |f,l| 
  "hello, #{f},#{l}"
end

## アスタリスク*
## シンボルを使わずに*を使って書くこともできる。

get '/about5/from/*/to/*' do |f,t| 
  "hello, #{f},#{t}"
end

##正規表現
## %r{}で囲む。シングルクウォートなし。

get %r{/about6/users/(\d*)} do |i| 
  "users :  #{i}"
end

=begin
<<EOS
<html>
<head>
  <title> herokutest </title>
</head>
<body>

  <h1>hello world, KH back</h1>

</body>
</html>
EOS
end
=end

