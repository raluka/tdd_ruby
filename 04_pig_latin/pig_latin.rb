def pig_translate(word)
  vowels = %w(a e i o u y)
  word_arry = word.split('')
  pos = 0
  pig_array = []
  word_arry.each_with_index do |letter, index|
    if vowels.include? word_arry[0]
      pig_array = word_arry
    elsif vowels.include? letter
      pos = index
      pig_array = word_arry[pos..word_arry.size] + word_arry[0..(pos - 1)]
      break
    end
  end
  (pig_array + %w(a y)).join()
end


def translate(string)
  string_array = string.split(' ')
  pig_result = []
  string_array.each do |word|
    pig_result << pig_translate(word)
  end
  pig_result.join(' ')
end