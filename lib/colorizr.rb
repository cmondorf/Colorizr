
class String

  @@COLORS = {:red => 31, :green => 32, :yellow => 33, :blue => 34, :pink => 35, :light_blue => 94,
   :white => 97, :light_grey => 37, :black => 30 }

  def self.create_colors
    @@COLORS.each do |color, value|
      self.send(:define_method, color) do
sa      end
    end
  end

  def self.colors
    color_value_pairs = []
    @@COLORS.each do |color, value|
      color_value_pairs << "#{color} - #{value}"
    end
    puts color_value_pairs
  end

  def self.sample_colors
    @@COLORS.each do |color, value|
      "Example for #{color}".send(color)
    end
  end
end


String.create_colors
