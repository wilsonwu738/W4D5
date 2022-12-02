# Phase 1

def first_anagram?(str_1, str_2)
  arr = str_1.chars.permutation.to_a
  arr2 = str_2.chars

  return false if !arr.include?(arr2)
  true
end

a = "abcdefg"
b = "gfedabcy"

p first_anagram?(a, b)

#phase 2
def second_anagram?(str_1, str_2)
  arr_2 = str_2.chars
  
  str_1.each_char do |char|
    if arr_2.index(char) != nil
      arr_2.delete(char)
    end
  end
  return false if arr_2.length != 0
  true
end

# a = "caa"
# b = "tac"

# p second_anagram?(a, b)

#phase 3

def third_anagram?(str_1, str_2)
  arr_1 = str_1.chars.sort.join("")
  arr_2 = str_2.chars.sort.join("")
  
  arr_1 == arr_2

end

a = "abcdefa"
b = "gfedabc"

# p third_anagram?(a, b)

def fourth_anagram?(str_1, str_2)
  return false if str_1.length != str_2.length
  hash = Hash.new(0)

  str_1.each_char.with_index do |char, i|
    hash[str_1[i]] += 1
    hash[str_2[i]] -= 1
  end

  hash.values.all?(0)
end

a = "abcdefgy"
b = "gfedabcy"

# p fourth_anagram?(a, b)