class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    if @calories < 200 and self.delicious?
      return true
    else
      return false
    end
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @flavor = flavor
    name = flavor + " jelly bean"
    super(name, 5)
  end
  def delicious?
    if  @flavor == "licorice" 
      return false
    else
      return true
    end
  end
end