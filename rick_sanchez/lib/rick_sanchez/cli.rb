require 'pry'
require_relative "./rick_api.rb"
require_relative "./rick.rb"
class CLI 

    def self.call 
        count = 0
        if count == 0
            API.get_ricks
        end 

        user_input = ""
        while user_input != "exit" do
        count = 1
        puts "Wubbalubbadubdub! There are 20 Rick's from different universes on the loose!"
        puts "To find out who these Rick's are, enter 'list names'."
        puts "To find a specific Rick's information (status, species, origin, location, image, url) enter the entire name!'"
        puts "If you don't care and want to leave them to their own mayhem, enter 'exit'."
        input = gets.chomp
        
           
        case input 
          when "list names"
              Rick.list_names.each do |rick|
                puts rick 
              end 
          when Rick.list_names.select do |rick|
                if rick == input 
                    #binding.pry
                Rick.find_by_name(input)
                end 
                end 
          when "exit"
              puts "Goodbye moonman!"
            break
        end 

    end 
    end 

    
    
end 
       