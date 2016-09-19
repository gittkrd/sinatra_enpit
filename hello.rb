require 'sinatra'

get '/:name' do |n|
<<EOS
<html>
<head>
  <title> herokutest </title>
</head>
<body>

  <h1>hello world, "#{params['name']}"</h1>

</body>
</html>
EOS
end
