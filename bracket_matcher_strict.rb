# frozen_string_literal: true

# For the purpose of this exercise in this method we assume that any unmatching bracket will
# need to return false even if there is/are other pair(s) of matching brackets

def bracket_matcher(string)
  @result = true
  @elements = string.split('(')
  @result = false if @elements.length == 1 || @elements.empty?
  @opening_bracket_count = @elements.length - 1
  @closing_bracket_count = 0
  @elements.each_with_index do |element, index|
    next if index == 0

    # finding how many times exactly closing bracket is present in each element of the array
    # closing_bracket_ocurrences = element.count(')')
    @closing_bracket_count += element.count(')')
  end
  @result = false if @opening_bracket_count != @closing_bracket_count
  @result
end
