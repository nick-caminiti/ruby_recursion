# frozen_string_literal: true

def merge_sort(array, sorted_array = [])
  if array.length < 2
    array
  else
    left_array = merge_sort(array[0, array.length / 2])
    right_array = merge_sort(array[array.length / 2, array.length])
    # merge into sorted array
    sorted_array
  end
end

array = [2, 3, 9, 7, 2, 5, 1, 6]
p merge_sort(array, sorted_array)