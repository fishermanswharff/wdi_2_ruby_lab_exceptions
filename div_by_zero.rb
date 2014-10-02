# ratio = 44/3
# puts "44/3 = #{ratio}"

# By default, Ruby programs terminate when an exception occurs

=begin
begin
  ratio = 44/0
  puts "44/0 = #{44/0}"
rescue ZeroDivisionError => e
  puts "you can't divide by zero: " + e.message
end
=end


class CircleRadiusError < Exception
end

class Circle

  attr_accessor :radius

  def initialize(r)
    if r.class == "FixNum" || r.class == "Float"
      @radius = r
    else
      raise CircleRadiusError.new("Radius must be a number type")
      what should we do here.
    end
  end
end

begin
  puts Circle.new("10")
rescue CircleRadiusError => e
  puts e
end


# Raising errors recipe
=begin
if condition_to_be_true
  do_something
else
  raise ErrorName.new("Message Error") #=> creating a new error class. We've created our own error implementation
end
=end
