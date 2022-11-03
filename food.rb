require 'pry'

#Recipes belongs to a user, has many ingredients
class Recipe 
    attr_accessor :title, :user, :recipes, :ingredients

    @@recipes = []
    def initialize(title)
        @title = title 
        @user = nil
        @ingredients = []
        @@recipes << self 
    end 

    def self.all
        @@recipes 
    end 

    def make_ingredient(food)
        new_ingredient = Ingredient.new(food)
        self.ingredients << new_ingredient
    end 

    
end 

#User has many recipes has many ingredients
class User 
    attr_accessor :name, :users

    @@users = []
    def initialize(name)
        @name = name 
        @@users << self
    end 

    def self.all 
        @@users 
    end 

    def recipes 
        Recipe.all.filter { |recipe| recipe.user == self }
    end 
end 

#Ingredients belongs to a recipe, belongs to a user
class Ingredient 
    attr_accessor :food, :recipe 

    def initialize(food = nil)
        @food = food 
        @recipe = nil
    end 
end 
#users
sophie = User.new('sophie') #<User:0x000000015b9d7068 @name="sophie">
tom = User.new('tom') #<User:0x000000015b9d7018 @name="tom">

#recipes
bread = Recipe.new('bread') #<Recipe:0x000000015b9d6fc8 @title="bread">
bread.user = sophie
pasta = Recipe.new('pasta') #<Recipe:0x000000015b9d6f78 @title="pasta">
pasta.user = tom 
cake = Recipe.new('cake') #<Recipe:0x000000015b9d6f28 @title="cake">
cake.user = tom

#bread
bread.make_ingredient('yeast')
bread.make_ingredient('flour')
bread.make_ingredient('eggs')
bread.make_ingredient('butter')

#pasta
pasta.make_ingredient('noods')
pasta.make_ingredient('tomat')
pasta.make_ingredient('pepper')
pasta.make_ingredient('basil')

#cake
cake.make_ingredient('sugar')
cake.make_ingredient('berry')
cake.make_ingredient('frosting')

binding.pry