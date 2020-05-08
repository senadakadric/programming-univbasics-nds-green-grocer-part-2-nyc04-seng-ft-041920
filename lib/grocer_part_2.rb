require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  cart.each do |cart_hash|
    coupons.each do |coupon_hash|
      if cart_hash[:item] == coupon_hash[:item]
        #if the cart and the coupon have the same item, then we want to create a new item in the cart that is "item w/ coupon"
        #but we only want to do that once and update it for how many there are.. don't want to create a new item w/ coupon each time we iterate over avocado... hm
        #since cart is an array, we can shovel in the creation of the new w/ coupon item
        if cart_hash[:count] >= coupon_hash[:num]
        cart_hash[:count] -= coupon_hash[:num]
        cart << { item: "#{cart_hash[:item]} W/COUPON", price: coupon_hash[:cost]/coupon_hash[:num], clearance: cart_hash[:clearance], count: coupon_hash[:num]}

        #we also want to update the value of cart_hash[:count] so that if we had 3 avocados to start with and used the coupon for 2 avocados, we'll now have 1 avocado at regular price
        
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |cart_hash|
    if cart_hash[:clearance] == true
      cart_hash[:price] = (cart_hash[:price] * 0.8).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  consolidated_cart = consolidate_cart(cart)
  apply_coupons(consolidated_cart, coupons)
  apply_clearance(consolidated_cart)

  grand_total = 0
  consolidated_cart.each do |item_hash|
      value = item_hash[:price] * item_hash[:count]
      grand_total += value
  end
  
  if grand_total > 100
    grand_total *= 0.9
  end

  grand_total

end
