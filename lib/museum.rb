class Museum
  attr_reader :name
  attr_accessor :exhibits,
                :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << exhibit_name
  end

  def recommend_exhibits(patron_name)
    recommended_exhibits = []
    @exhibits.each do |exhibit|
      if patron_name.interests.include?(exhibit.name)
        recommended_exhibits << exhibit
      end
    end
    recommended_exhibits
  end

  def admit(patron_name)
    @patrons << patron_name
  end   
end
