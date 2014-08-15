def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  phrase = []
  n.times do
    phrase << word
  end
   phrase.join(' ')
end

def start_of_word(word, n)
   word.slice(0..n-1)
end

def first_word(phrase)
  phrase.split(' ').first
end

def titleize(phrase)
  titles = phrase.split(' ')
  ignore_list = ["and", "or", "over", "the"]
  result = []
  titles.each do |e|
    if ignore_list.include? e
      result << e
    else
      result << e.capitalize
    end
    result.first.capitalize!
  end
  result.join(" ")
end
