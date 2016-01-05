# deep duplicate
# goal: create totally new object with new object_id's for the outer object as well every single the inner one

rock_bottom = [5]
deepest = [4, [rock_bottom]]
arr = [ [1, 2], [3, deepest] ]



class Array

  def deep_dup
    new_array = []

    self.each do |nest|
      if ! nest_is_a? Array
        (nest.dup).deep_dup





    new_array = self
    # base case
    if ! self.is_a? Array 
      return new_array
    #recursive case
    else
      puts "#{self} -- self, #{new_array} -- new_array"
      puts "#{self.object_id} -- original parent id"
      new_array.each do |nest|
        # if !nest.is_a? Array
          # nest
        # else
        if nest.is_a? Array
          nest.map!{|nested_array| nested_array.dup if nested_array.is_a? Array}
          puts "#{nest.object_id} -- duped child id"
          nest.deep_dup
        end
      end
    end
  end
    # target sub-arrays
    # self.each do |first_nesting|
    #     puts "#{first_nesting} - first_nest - #{first_nesting.object_id}"
    #     # duped_array = first_nesting.dup
    #     puts "#{duped_array} - Duped - #{duped_array.object_id}"
    # end

    # self.each do |first_nesting|
    #   puts first_nesting.object_id
    #   if first_nesting.is_a? Array
    #     first_nesting.each do |deepest|
    #       puts deepest.object_id if deepest.is_a? Array
    #       if deepest.is_a? Array
    #         deepest.each do |rock_bottom|
    #           puts rock_bottom.object_id if rock_bottom.is_a? Array
    #         end
    #       end
    #   end
    # end
    # end
    # duplicate sub-arrays
    # stitch sub-arrays together
    # return new shiny duped array


  # end



end

puts "#{rock_bottom} - rock_bottom - #{rock_bottom.object_id}"
puts "#{deepest} - deepest nest - #{deepest.object_id}"
arr.deep_dup