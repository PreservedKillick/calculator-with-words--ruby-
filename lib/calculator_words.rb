def calculator_words(sentence)
  match_location =
  math_opps = { "plus" => "+", "minus" => "-", "times" => "*", "divided" => "/" }
  sentence.delete!("?")
  sentence.delete!("by")
  sentence_array = sentence.split.slice(2..-1)
  math_opps_keys = math_opps.keys
      
  intersections = math_opps_keys & sentence_array
   intersections

  match_location = sentence_array.each_index.select {|i| sentence_array[i] == intersections.join }
  sentence_array[match_location.join.to_i] = math_opps.values_at(intersections.join)
  result = eval sentence_array.join("")
  result
end

print calculator_words("What is 20 divided by 6?")

