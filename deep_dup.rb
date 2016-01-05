# deep duplicate
# goal: create totally new object with new object_id's for the outer object as well every single the inner one

arr = [ [1, 2], [3, 4] ]


class Array

  def deep_dup
    # target sub-arrays
    array.each do |first_nesting|
      while first_nesting.type? array
        duped_array = call_each(array)


    # duplicate sub-arrays
    # stitch sub-arrays together
    # return new shiny duped array


  end


  def call_each(array)
    array.each do |nesting|
      nesting.dup
    end
  end


end