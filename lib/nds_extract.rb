$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  index = 0
  totals = []
  
  while index < directors_database.length do
    itterable = 0
    total = 0
    
    while itterable < directors_database[index][:movies].length do
      total += directors_database[index][:movies][itterable][:worldwide_gross]
      
      itterable += 1
    end
    totals.push({directors_database[index][:name], total})
    index += 1
  end
  
  return totals
end
