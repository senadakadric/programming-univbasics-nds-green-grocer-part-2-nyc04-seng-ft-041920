require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
  # cart is an array of item hashes and coupons is an array of coupon hashes
  
  # REMEMBER: This method **should** update cart
  

coupons.each do |coupon_hash|
    
    #checking if the cart has a value corresponding to the value of the item of the coupon
    if cart.has_value?(coupon_hash[:item])
      
    end 
  end
 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
end
