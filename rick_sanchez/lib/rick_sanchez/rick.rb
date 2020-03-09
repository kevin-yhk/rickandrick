class Rick
  attr_accessor :name, :status, :species, :origin, :location, :image, :url

  @@all = []

  def initialize(name, status, species, origin, location, image, url)
    @name = name
    @status = status 
    @species = species 
    @origin = origin 
    @location = location 
    @image = image
    @url =url 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_names
    @@all.map {|rick|
        rick.name}  
  end 

  def self.find_by_name(name)
        @@all.select {|rick|
            if rick.name == name
            puts "Status = #{rick.status}"
            puts "Species = #{rick.species}"
            puts "Origin = #{rick.origin}" 
            puts "Location = #{rick.location}" 
            puts "Image = #{rick.image}" 
            puts "API URL = #{rick.url}"
            end }
            
    end 
end
