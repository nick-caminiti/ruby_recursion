# frozen_string_literal: true

def merge_sort(array, sorted_array = [])
  if array.length < 2
    array
  else
    left_array = merge_sort(array[0, array.length / 2])
    right_array = merge_sort(array[array.length / 2, array.length - 1])
    # merge into sorted array
    while left_array.length.positive? && right_array.length.positive?
      if left_array[0] < right_array[0]
        sorted_array << left_array[0]
        left_array.delete_at(0)
      else
        sorted_array << right_array[0]
        right_array.delete_at(0)
      end
    end
    (sorted_array << right_array).flatten! if left_array.empty?
    (sorted_array << left_array).flatten! if right_array.empty?
    sorted_array
  end
end

array = [2, 3, 99, 99, 1000, 9, -1, 7, 0, 45, 2, 5, 1, 6]
p merge_sort(array)
