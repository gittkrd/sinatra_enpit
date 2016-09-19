require 'sinatra'

get '/' do
  erb :index
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

