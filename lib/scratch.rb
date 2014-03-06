# def is_number(sentence)
#   true if Integer(sentence) rescue false
# end
def is_float(sentence)
  true if Float(sentence) rescue false
end

def calculator_words(sentence)
math_opps = { "plus" => "+", "minus" => "-", "times" => "*", "divided" => "/" }
sentence.delete!("?")
sentence.delete!("by")
sentence.delete("what")
sentence.delete("is")
sentence_array = sentence.split
results = []



sentence_array.each do |element|
  math_opps.keys.include? element
  result << math_opps[element]

