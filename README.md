Takeaway
========
Week 4 weekend test. The excercise was to create a Takeaway program that takes in orders from a menu and sends a SMS confirmation to your phone after successfully ordering.

The objectives of the excercise was to more experience in Object Oriented Programming, Test Driven Development and use of Ruby Gems.

Technologies
------------
- Ruby
- Rspec
- Twilio

How to run it
--------------

`
 git clone https://github.com/willhall88/takeaway.git
 cd Takeaway
 irb
 require './lib/takeaway.rb'
 takeaway = Takeaway.new
 order = Order.new
 fish = Dish.new('Fish', 3.50)
 chips = Dish.new('Chips', 1.50)
 menu = Menu.new(['fish', 'chips'])
`
You can now view your menu and your empty order.

Now make an order giving the dish and the quantity(this is defaulted to 1).

You can now view your menu and see how much it will cost.

Now confirm your order. It will ask you to submit your total price. if this is incorrect then an error will be raised, if this is correct then a confirmation text will be sent.

How to run tests
----------------

`
 git clone https://github.com/willhall88/takeaway.git
 cd Takeaway
 rspec	
`