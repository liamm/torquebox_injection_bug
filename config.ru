urlmap = {
    "/" => WebAdaptor.new,
}

run Rack::URLMap.new(urlmap)