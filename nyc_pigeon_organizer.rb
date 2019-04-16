require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  output = {}
  
  data.each do |color, color_data|
    color_data.each do |data, pigeons|
      pigeons.each do |pigeon|
        if !output.has_key?(pigeon)
          output[pigeon] = {}
        end
        
        if !output[pigeon].has_key?(color)
          output[pigeon][color] = []
        end
        
        if !output[pigeon][color].include?(data)
          output[pigeon][color] << data.to_s
        end
      end
    end
  end
  output
end