class Pizza
  @@list = ['pepperoni', 'cheese', 'supreme']
  def self.all
    return @@list
  end

  def self.create(pizza)
    @@list << pizza
  end
end