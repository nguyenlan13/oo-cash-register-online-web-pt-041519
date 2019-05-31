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
    @total*discount.to_f
  end
  
  def items
    @stuff
  end
  
  def void_last_transaction
    
  end
end