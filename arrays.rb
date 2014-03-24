require 'rubygems'
require 'pry-debugger'

module ArrayUtil

  def self.max(array)
    # return nil if empty
    if array.empty? then return nil end

    highest = array[0]
    array.each { |x| if (highest < x) then (highest = x) end }
    return highest
  end

  def self.middle_element(array)
    # return nil if empty
    if array.empty? then return nil end

    # return the only element if it's the only element
    if array.length == 1 then return array[0] end

    middle = (array.length/2.0).floor
    if (array.length%2.0 == 1)
      return array[middle]
    else
      return (array[middle] + array[middle-1])/2.0
    end
  end

  def self.sum_arrays(array1, array2)
    # if they're not the same size, return nothing
    if array1.length != array2.length
      return nil
    end

    sum = []
    for i in array1
      sum = array1[i] + array2[i]
    end

    return sum
  end
end
