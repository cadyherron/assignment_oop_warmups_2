# deep duplicate
# goal: create totally new object with new object_id's for the outer object as well every single the inner one

deepest = [4]
arr = [ [1, 2], [3, deepest] ]



class Array

  def deep_dup
    puts "#{self.object_id}-Original"
    new_array = self
    # base case
    if ! self.is_a? Array 
      return new_array
    #recursive case
    else
      new_array.each do |nest|
      puts "#{nest} - nest" 
        if !nest.is_a? Array
          nest
        else
          nest.map!{|nested_array| nested_array.dup}
        end
      end
    end
    # target sub-arrays
    self.each do |first_nesting|
        puts "#{first_nesting} - first_nest - #{first_nesting.object_id}"
        duped_array = first_nesting.dup
        puts "#{duped_array} - Duped - #{duped_array.object_id}"
    end

    self.each do |first_nesting|
      puts first_nesting.object_id
      first_nesting.each do |deepest|
        puts deepest.object_id if deepest.is_a? Array
      end
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

puts "#{deepest} - deepest nest - #{deepest.object_id}"
arr.deep_dup