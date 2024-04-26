# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
fa_food = "tacos"
puts fa_food
puts fa_food.class
puts fa_food.upcase


# String Methods
class dog
    def speak
        puts "woo"
    end
end

lucy = dog.class
lucy.speak