require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
read = open(url).read
hash = JSON.parse(read)
hash['drinks'].each do |key|
  ing = Ingredient.new(name: key['strIngredient1'])
  ing.save
end
