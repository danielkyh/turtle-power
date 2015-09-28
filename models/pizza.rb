class Pizza

  @@list = ['pepperoni', 'cheese', 'supreme']
  
  def self.all
    return @@list
  end

  def self.create(pizza)
    @@list << pizza
  end

  def self.search(pizza_name)
    if @@list.include?(pizza_name)
      return pizza_name
    else
      return false
    end
  end

end