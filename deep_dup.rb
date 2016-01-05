# deep duplicate
# goal: create totally new object with new object_id's for the outer object as well every single the inner one

arr = [ [1, 2], [3, 4] ]


class Array

  def deep_dup
    puts "#{self.object_id}-Original"
    # target sub-arrays
    self.each do |first_nesting|
        puts "#{first_nesting} - first_nest - #{first_nesting.object_id}"
        duped_array = first_nesting.dup
        puts "#{duped_array} - Duped - #{duped_array.object_id}"
    end

    # duplicate sub-arrays
    # stitch sub-arrays together
    # return new shiny duped array


  end


  def call_each(array)
    array.each do |nesting|
      if nesting.is_a? Array
        array.dup
      else
        nesting
      end
    end
  end


end

arr.deep_dup