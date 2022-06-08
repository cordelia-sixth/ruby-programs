string = "Hello world"
shift = 3

def encipher(string, shift)
  if string.match?(/[^A-Za-z\x20]/)
    return "Please enter only alphabets."
  end
  
  string.each_codepoint.map do |point|
    if point.chr.match?(/[A-Z]/)
      ((point + shift - 65) % 26 + 65).chr
    elsif point.chr.match?(/[a-z]/)
      ((point + shift - 97) % 26 + 97).chr
    elsif point.chr.match?(/[\x20]/)
      point.chr
    end
  end.join
end

p encipher(string, shift)
