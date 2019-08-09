# frozen_string_literal: true

# For the purpose of this exercise we assume that any matching pair of brackets will
# return true even if the example includes other unmatching brackets
def bracket_matcher(string)
  @result = false
  @elements = string.split('(')
  @elements.each_with_index do |element, index|
    next if index == 0
    next unless element.include?(')')

    @result = true
    return @result
  end
  @result
end
