
class String
#
#   def colorizr
#
#   end
@@COLORS = {:red => 31, :green => 32, :yellow => 33, :blue => 34, :pink => 35, :light_blue => 94,
   :white => 97, :light_grey => 37, :black => 30 }


   def self.create_colors
     @@COLORS.each do |color, value|
       define_method("\e[#{value}m #{self}\e[0m")

       puts "\e[#{number}m #{self}\e[0m"


puts "color hash tests"

puts COLORS[:white]


# class Numeric
#   [["add", "+"], ["subtract", "-"], ["multiply", "*",],
#    ["divide", "/"]].each do |method, operator|
#     define_method("#{method}_2") do
#       method(operator).call(2)
#     end
#   end
# end

STRING.create_colors
