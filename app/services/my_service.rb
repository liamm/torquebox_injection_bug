class MyService
  
  include TorqueBox::Injectors
  
  attr_reader :accessor
  
  def initialize(opts={})
    @accessor = HashAccessor.new
  end
  
  def start
    Thread.new { run }
  end
  
  def stop
    @done = true
  end
  
  def run
    until @done
      p "String lookup from within Service: #{accessor.find('one')}"
      p "Symbol lookup from within Service: #{accessor.find(:one)}"
      p "Fixnum lookup from within Service: #{accessor.find(1)}"
      sleep 1
    end
  end
  
end