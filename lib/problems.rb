def largest_prime_factor(num)
  num.downto(2) do |factor|
   if num % factor == 0 && prime?(factor)
    return factor
  end  
end  

end  

def prime?(num)
  return false if num < 2
  (2...num).none? {|i| num % i == 0}  
end  

def unique_chars?(str)
 deja_vu = []
 str.each_char do |char|
   if deja_vu.include?(char)
    return false
   end
   deja_vu << char
 end  
  true
end  

def dupe_indices(arr)
tracker = Hash.new{|h,k| h[k] = [] }
 arr.each_with_index do |ele, i|
    tracker[ele] << i
 end 
 tracker.select {|ele, arr| arr.length > 1}
end  

def ana_array(arr_1, arr_2)
  count_1 = ele_count(arr_1)
  count_2 = ele_count(arr_2)
  count_1 == count_2
end  

def ele_count(arr)
count = Hash.new(0)
arr.each {|ele| count[ele] += 1}
count
end  
