

class User

    # attributes belong to the instance NOT the class 
    # what is an attr_accessor => gives us the setter and getter method 
    attr_accessor :name, :age

    @@all = [] # a way of the class keeping track of all of its instances 

    # .new will automatically call the initialize
    # rules to follow upon instantation 
    # instantiation = creating a new instance 
    def initialize(name, age)
        @name = name 
        @age = age 
        save
    end 

    # adding the newly created instance to the all array ``
    def save 
        @@all << self # self is the instance 
    end 


    def self.all # class method/ self = class
        @@all 
    end 

    # anything between def and end is a method
    def self.find_user(username)
        @@all.find do |user| # anything between a do and end is a block
            self.name === username 
        end 
    end 
end 

# items in an array are called elements 

# what is iterating? isolating each element to be evaluated according to block logic 

# methods to iterate over array => 
    # select[return an array of matches] //u se for collection, 
    # each[will return the original array], 
    # map[great for modification, returns a new array] / collect
    # find[return the first element that returns true for our block] return one item


# how to identify self 
    # self is going to be the receiver of the method
    # ask yourself, is it aan instance or class method 


user = User.new
puts user 

    