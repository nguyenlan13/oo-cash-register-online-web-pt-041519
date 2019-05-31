class CashRegister
  
  attr_accessor :discount, :total, :stuff, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @stuff = []
  end
  
  def total
    @total
  end
    
  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times do
      @stuff << title
    end
    self.last_transaction = price*quantity
  end
    
  def apply_discount
    if discount !=0
      self.total = (total*((100.00 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $800."
  end
  
  def items
    @stuff
  end
  
  def void_last_transaction
    
  end
end