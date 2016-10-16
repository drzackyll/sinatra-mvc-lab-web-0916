class PigLatinizer
  attr_accessor :user_input

  def to_pig_latin(user_input)
    words = user_input.split(" ")
    words = words.map {|word| piglatinize(word)}
    words.join(" ")
  end

  def piglatinize(input)
    arrayize = input.split(" ").map do |word|
      word.split(/([aeiouAEIOU].*)/)
    end

    arrayize.map do |word|
      if word[0] == ""
        word << "way"
        word.join('')
      else
        word.insert(-1, word.delete_at(0))
        word << "ay"
        word.join('')
      end
    end[0]
  end

end
