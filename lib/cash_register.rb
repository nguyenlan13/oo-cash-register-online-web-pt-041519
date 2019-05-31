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
      return "After the discount, the total comes to $#{self.total}."
    end
      return "There is no discount to apply."
  end
  
  def items
    @stuff
  end
  
  def void_last_transaction
    self.total = 
  end
end