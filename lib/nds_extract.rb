$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

<<<<<<< HEAD
def gross_for_director(director_data)
movie_index = 0
director_total = 0 
while movie_index < director_data[:movies].length do 
  director_total += director_data[:movies][movie_index][:worldwide_gross]
  movie_index += 1 
end
  director_total
=======
def gross_for_director(nds, director_index, movie_index)
gross_director_total = 0 
inner_index = 0 
while inner_index < nds.length do 
  gross_director_total += nds[director_index][movie_index][inner_index][:worldwide_gross]
    inner_index += 1
end
gross_for_director
>>>>>>> 03bc8660ebcfd2f229749912a063336a766a640c
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 

  while director_index < nds.length do 
    
     directors_name = nds[director_index][:name]
      result[directors_name] = 0   #sets key/value pair
    
    result[directors_name] = gross_for_director(directors_database[director_index])
    director_index += 1
end
result
end