require 'sinatra'

get '/hello/:name' do

"Hello #{params['name']}!"
=begin
>>>>>>> hello1
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
=end
end
