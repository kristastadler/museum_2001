class Museum
  attr_reader :name
  attr_accessor :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << exhibit_name
  end   
end
