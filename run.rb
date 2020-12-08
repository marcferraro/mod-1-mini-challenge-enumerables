require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  
  spicy_foods.each do |key, element|
    heat_level_emoji = ""

    key[:heat_level].times do
      heat_level_emoji = heat_level_emoji + "🌶"
    end
    puts "#{key[:name]} (#{key[:cuisine]}) | Heat Level: #{heat_level_emoji}"
  end

end

def get_names(spicy_foods)
  name_array = []

  spicy_foods.each do |key, element|
    name_array << key[:name]
  end
  name_array
end


def spiciest_foods(spicy_foods)
  five_level_foods = []

  spicy_foods.each do |element, key|
    if element[:heat_level] >= 5
      five_level_foods << element
    end
  end
  return five_level_foods
end
spiciest_foods(spicy_foods)

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  final_array = spicy_foods.select do |key, value|
    key[:cuisine].include?(cuisine)
  end
  return final_array[0]
end
get_spicy_food_by_cuisine(spicy_foods, "Thai")


# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  spicy_foods.each do |key, element|
    if key[:heat_level] >= 5
      heat_level_emoji = ""
          #binding.pry
      key[:heat_level].times do
        heat_level_emoji = heat_level_emoji + "🌶"
      end
        puts "#{key[:name]} (#{key[:cuisine]}) | Heat Level: #{heat_level_emoji}"
        heat_level_emoji = ""
    end
  end
end

print_spiciest_foods(spicy_foods)

def average_heat_level(spicy_foods)
  total_heat = 0
  spicy_foods.each do |key, element|
    total_heat = total_heat + key[:heat_level]
  end
  return total_heat / spicy_foods.count
end

average_heat_level(spicy_foods)

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
binding.pry
"pls"