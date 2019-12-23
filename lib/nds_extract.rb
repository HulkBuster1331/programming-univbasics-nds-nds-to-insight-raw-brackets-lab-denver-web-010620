$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'


def directors_totals(nds)
 
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
    row_index += 1    
   end
 return total
end
