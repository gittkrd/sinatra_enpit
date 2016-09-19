require 'sinatra'

name = williams

get '/:name' do |n|
<<EOS
<html>
<head>
  <title> herokutest </title>
</head>
<body>

  <h1>hello world, "#{name}"</h1>

</body>
</html>
EOS
end
