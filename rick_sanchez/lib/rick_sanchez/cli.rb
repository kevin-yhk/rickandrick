class RickSanchez::CLI 

    def call 
        
      RickSanchez::API.get_ricks
        
      puts "          
        . -^   `--,      
       /# =========`-_   
      /# (--====___====\ 
     /#   .- --.  . --.| 
    /##   |  * ) (   * ),
    |##   \    /\ \   / |
    |###   ---   \ ---  |
    |####      ___)    #|
    |######           ##|
     \##### ---------- / 
      \####           (  
       `\###          |  
         \###         |  
          \##        |   
           \###.    .)   
            `======/   "            
        puts "Wubbalubbadubdub! There are 20 Rick's from different universes on the loose! SHOW ME WHAT YOU GOT!"
        user_input = ""
        while user_input != "exit" do
        puts "To find out who these Rick's are, enter 'list names'."
        puts "To find a specific Rick's information (status, species, origin, location, image, url) enter the entire name!'"
        puts "If you don't care and want to leave them to their own mayhem, enter 'exit'."
        input = gets.chomp
        
           
        case input 
          when "list names"
              RickSanchez::Rick.list_names.each do |rick|
                puts rick 
              end 
          when RickSanchez::Rick.list_names.detect do |rick|
               rick == input 
               end 
               rick = RickSanchez::Rick.find_by_name(input)
                puts "Status = #{rick.status}"
                puts "Species = #{rick.species}"
                puts "Origin = #{rick.origin}" 
                puts "Location = #{rick.location}" 
                puts "Image = #{rick.image}" 
                puts "API URL = #{rick.url}" 
          when "exit"
              puts "Goodbye moonman!"
            break
        end 

    end 
    end 

    
    
end 
       
