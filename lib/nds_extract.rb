$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'


def directors_totals(nds)
<<<<<<< HEAD
 
  total = {}
    row_index = 0 
      
        
  while row_index < nds.length do
    column = 0
        director_name = nds[row_index][:name]
          movies = nds[row_index][:movies]
        #binding.pry
   while column < movies.length
        
        if !total[director_name]
          total[director_name] = movies[column][:worldwide_gross]
         else
          total[director_name] += movies[column][:worldwide_gross]
            
       end
       column += 1
     end
=======
 binding.pry
  total = {}
    row_index = 0 
      column = 0
        price = directors_database[0][:movies][:worldwide_gross]
 
  while row_index < directors_totals do
      total += directors_database[0][:movies][:worldwide_gross]
      
      
>>>>>>> 846bb8a8580a33168918880602b985eb0100a279
    row_index += 1    
   end
 return total
end
