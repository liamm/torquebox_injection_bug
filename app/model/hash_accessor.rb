class HashAccessor
  
  def initialize
    @hash = Hash.new('Nothing found')
    @hash['one'] = 1
    @hash[:one] = 1
    @hash[1] = 1
  end
  
  def find(key)
    @hash[key]
  end
  
end