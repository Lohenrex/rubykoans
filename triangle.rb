# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  test_faulty_triangle(a, b, c)

  case [a, b, c].uniq.length
  when 1
    :equilateral
  when 2
    :isosceles
  else
    :scalene
  end
end

def test_faulty_triangle(a, b, c)
  side_is_positive = [a, b, c].find { |side| !side.positive? }
  if !side_is_positive.nil?
    raise TriangleError, "Sides cannot be zero or negative!"
  end

  side_sum = [a, b, c].sum
  largest_side = [a, b, c].max
  shape_is_consistent =  (side_sum - largest_side) > largest_side
  if !shape_is_consistent
    raise TriangleError, "The sum of two sides must be higher than the third side!"
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
