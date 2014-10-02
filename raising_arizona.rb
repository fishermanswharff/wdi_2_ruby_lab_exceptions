

class CircleRadiusError < Exception
end

class Circle
  attr_accessor :radius

  def initialize(r)
    # check class name without "" double quotes for strings.
    if r.class == Fixnum || r.class == Float
      @radius = r
    else
      raise CircleRadiusError.new("You're so stupid, you can't do that")
      # what should we do here?
    end
  end
end




begin
  puts Circle.new(10) #=> #<Circle:0xobjectid>
  puts Circle.new("10") #=> C'mon man, You're so stupid, you can't do that
rescue CircleRadiusError => e
  puts "C'mon man, " + e.message
end


