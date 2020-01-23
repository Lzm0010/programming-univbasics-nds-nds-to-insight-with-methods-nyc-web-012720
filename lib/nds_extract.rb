$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    movie_index = 0
    revenue_total = 0
    
    while movie_index < director_data[:movies].length do
      revenue_total += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    
    revenue_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  #array(nds) of hash (director) of array (movies) of hashes (movie properties)
  
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    
    director_name = director[:name]
    
    
    result[director] = revenue_total
    
    director_index += 1
  end
  
  result
end
