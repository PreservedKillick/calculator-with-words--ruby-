def calculator_words(sentence)
  match_location =
  math_opps = { "plus" => "+", "minus" => "-" }
  sentence.delete!("?")
  sentence_array = sentence.split.slice(2..-1)
  math_opps_keys = math_opps.keys
    # ["plus", "minus"]
    
  match_location = sentence_array.each_index.select {|i| sentence_array[i] == math_opps.keys[0] }
  sentence_array[match_location.join.to_i] = math_opps.values[0]
  sum = eval sentence_array.join("")
  sum

end

print calculator_words("What is 18 minus 7?")

#sentence_array.each_index.select {|i| sentence_array[i] == math_opps.keys[0]}

  # sentence_array.map! do |i|
  #   if sentence_array(i) == math_opps.keys[0]

  #      sentence_array(i) = math_opps.values[0]
  #   end
  #   sentence_array[i].to_i
  #   puts sentence_array
  # end





