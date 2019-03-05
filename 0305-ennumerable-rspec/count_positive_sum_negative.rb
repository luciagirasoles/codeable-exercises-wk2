
def count_positives_sum_negatives(lst = "")
  if lst.empty?
    []
  else
    groups = lst.group_by {|val| val > 0}
    result = groups[true].nil? ? 0 : groups[true].count , groups[false].nil? ? 0 : groups[false].reduce(:+)
  end
end

# Test que debe pasar

puts count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
puts count_positives_sum_negatives([2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14])
puts count_positives_sum_negatives([1])
puts count_positives_sum_negatives([-1])
puts count_positives_sum_negatives([0,0,0,0,0,0,0,0,0])
puts count_positives_sum_negatives()