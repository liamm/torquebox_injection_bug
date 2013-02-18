require 'sinatra'

class WebAdaptor < Sinatra::Base
  
  include TorqueBox::Injectors
  
  get '/string' do # This doesn't work
    return service.accessor.find('one').to_s
  end
  
  get '/symbol' do # This doesn't work
    return service.accessor.find(:one).to_s
  end
  
  get '/fixnum' do # This works
    return service.accessor.find(1).to_s
  end
  
  private
  
  def service
    fetch('service:MyService')
  end
  
end