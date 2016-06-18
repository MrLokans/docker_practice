require 'sinatra'
require 'redis'

set :bind, '0.0.0.0'

configure do
    # We use the name of the redis container
    $redis = Redis.new(:host => 'redis')
end

get '/' do
    count = $redis.incr('count')

    "<h1>Hello, visitor!</h1>"\
    "<p>This page has been viwied #{count} time!</p>"
end