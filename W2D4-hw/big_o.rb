#Big-O

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# 1) O(n^2) time
def quadratic_biggest_fish(arr)
  arr.each_with_index do |fish1, i|
    max_length = true

    arr.each_with_index do |fish2, j|
      next if i == j
      max_length = false if fish2.length > fish1.length
    end

    return fish1 if max_length
  end
end

#n log n search
def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2

  left = merge_sort(arr.take(mid))
  right = merge_sort(arr.drop(mid))
  merge(left, right)
end

def merge(left, right)
  merged = []
  until left.empty || right.empty?
    case left.first <=> right.first
    when -1
      merged << left.shift
    when 0, 1
      merged << right.shift
    end
  end

  merge.concat(left)
  merge.concat(right)
end

def nlogn_bigest_fish(arr)
  prc ||= Proc.new { |x,y| y.length <=> x.length }
  arr.merge_sort(&prc)[0] # if I had a proc
end

def linear_search(arr)
  longest_fish = ''
  arr.each do |fish|
    if fish.length > longest_fish.length
      longest_fish = fish
    end
  end
  longest_fish
end

def slow_d(direction, arr)
  arr.each_with_index do |tile, i|
    return i if tile == direction
  end
end

tiles_h = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_h)
  tiles_h[direction]
end


# p linear_search(arr)
