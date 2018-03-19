# A method to reverse each word in a sentence, in place.
require 'pry'
def reverse_words(my_words)
  return my_words if my_words.nil? || my_words.length <= 1

  i = 0
  j = 0
  while i < my_words.length
    j = i

    if my_words[i] == " "
      i += 1

    else
      while i < my_words.length && my_words[i] != " "
        i += 1
      end

      k = 0
      g = i - j - 1

      while k < g
        temp = my_words[j + k]
        my_words[j + k] = my_words[j + g]
        my_words[j + g] = temp
        k += 1
        g -= 1
      end

    end
  end

  return my_words
end
