require('sinatra')
require('sinatra/reloader')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coincounter') do
  @coincounter = params.fetch('coins').to_i.coin_counter()
  erb(:coin_counter)
end
