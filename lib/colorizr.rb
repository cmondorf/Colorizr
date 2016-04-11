
class String

  @@Colors = {:red => 31, :green => 32, :yellow => 33, :blue => 34, :pink => 35, :light_blue => 94,
    :white => 97, :light_grey => 37, :black => 30 }


  def self.create_colors
    @@Colors.each do |color, value|
      self.send(:define_method, color) do
        puts "\e[#{value}m #{self}\e[0m"
      end
    end
  end


  def self.colors
    colors = []
    colors << @@Colors.keys
    puts colors
  end

  def self.sample_colors
    @@Colors.each do |color, value|
      "Example for #{color}".send(color)
    end
  end
end

String.create_colors
