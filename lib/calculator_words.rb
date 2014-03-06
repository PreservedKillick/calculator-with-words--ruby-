def is_float(sentence)
  true if Float(sentence) rescue false
end

def calculator_words(sentence)
  match_location =
  final_array = []
  math_opps = { "plus" => "+", "minus" => "-", "times" => "*", "divided" => "/" }
  sentence.delete!("?")
  sentence.delete!("by")
  sentence_array = sentence.split.slice(2..-1)
  math_opps_keys = math_opps.keys

      
  intersections = math_opps_keys & sentence_array
   intersections

  match_location = sentence_array.each_index.select {|i| sentence_array[i] == intersections.join }
  sentence_array[match_location.join.to_i] = math_opps.values_at(intersections.join)
  

  sentence_array.each do |element|
    if is_float(element)
       final_array.push(element.to_f)
    else
      final_array.push(element)
    end
  end
  print final_array
  result = eval final_array.join("")
  result.round(2)
end

print calculator_words("What is 20 divided by 6?")

