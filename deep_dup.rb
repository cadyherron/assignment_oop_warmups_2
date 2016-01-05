# deep duplicate
# goal: create totally new object with new object_id's for the outer object as well every single the inner one

rock_bottom = [5]
deepest = [4, [rock_bottom]]
arr = [ [1, 2], [3, deepest] ]



class Array

  def deep_dup
    new_array = []

    self.each do |nest|
      if nest.is_a? Array
        new_array << nest.dup.deep_dup
      else
        nest
      end
    end
  end


end

puts "#{rock_bottom} - rock_bottom - #{rock_bottom.object_id}"
puts "#{deepest} - deepest nest - #{deepest.object_id}"
print arr.deep_dup[1][1][1].object_id