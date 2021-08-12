class Point

 def initialize(x,y)
    @x=x
   @y=y
 end 
 attr_accessor:x,:y
end 

puts"----------------------"

p=Point.new(2,3)

printf "The coodrinates of the given point are %d,%d ",p.x,p.y
  puts"\n"
puts "----------------------------"

class Circle<Point
  def initialize(x,y,radiusvalue)
     super(x,y)
      @radiusvalue=radiusvalue
  end 
 def area()
   return Math::PI*@radiusvalue** 2
 end 

end 
puts"---------------------------------"
c=Circle.new( 2, 2,4.25 )


printf"The area of the given circle is  %.2f ", c.area()
 puts"\n"
puts "------------------------------------------"

class Cylinder<Circle
  def initialize(x,y,radiusvalue,height)
       super(x,y,radiusvalue)
       @height=height
  end 
  def area()
     return 2*super+2*Math::PI*@radiusvalue*@height
  end 
end 




cylinder = Cylinder.new(2, 2,4.25,10 )

printf"The area of the given cylinder is %.2f ",cylinder.area()
