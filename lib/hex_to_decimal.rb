require 'pry'

def integer(num)
  if /\d/.match(num)
    return num.to_i
  else
    num = num.capitalize
    if num == 'A'
      return 10
    elsif num == 'B'
      return 11
    elsif num == 'C'
      return 12
    elsif num == 'D'
      return 13
    elsif num == 'E'
      return 14
    elsif num == 'F'
      return 15
    end
  end
end

#each_with_index do
def hex_to_decimal(string)
  total = 0
  hex_array = string.split(//)
  hex_array.each do |char|
    this = integer(char)*16**(hex_array.index(char) - (hex_array.length - 1)).abs
    total += integer(char)*16**(hex_array.index(char) - (hex_array.length - 1)).abs
  end
  total
end
