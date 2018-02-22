require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = {}
    @items = []
    @prices = []
  end



  def add_item(title, price, quantity=1)
      quantity.times { @items << title }
      @prices << price
      @total += price * quantity
    end

  # def add_item(title, price, quantity=1)
  #
  #   @cart[title] = {}
  #   if quantity > 1
  #     @cart[title]["price"] = price * quantity
  #     @cart[title]["quantity"] = quantity
  #     @total = @total += (price * quantity)
  #   else
  #     @cart[title]["price"] = price
  #     @total = @total += price
  #   end
  #   @total
  # end


  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total * discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end


  def items
    @items
  end

  def void_last_transaction
    @total -= @prices[-1]
  end

end
