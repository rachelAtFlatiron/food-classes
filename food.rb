require 'pry'

#Recipes
class Recipe 

end 

#User
class User 
   
end 

#Ingredients
class Ingredient 
    
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
pasta.make_ingredient('noodles')
pasta.make_ingredient('tomat')
pasta.make_ingredient('pepper')
pasta.make_ingredient('basil')

#cake
cake.make_ingredient('sugar')
cake.make_ingredient('berry')
cake.make_ingredient('frosting')

sophie.recipes #returns an array with one instance of recipe for bread
tom.recipes #returns an array with two instances of recipe - one for pasta, one for cake
tom.recipes.length #2
tom.recipes[0].ingredients.length #4
tom.recipes[0].ingredients[0].food #noodles
sophie.recipes #returns an array of recipe instances
bread.ingredients #returns an array of ingredient instances
bread.user #returns instance of user sophie
bread.user.name #sophie

binding.pry


