string = "Hello World"
shift = 3

def encipher(string, shift)
  string.each_codepoint.map do |point|
    if point.chr.match?(/[A-Z]/)
      ((point + shift - 65) % 26 + 65).chr
    elsif point.chr.match?(/[a-z]/)
      ((point + shift - 97) % 26 + 97).chr
    else
      point.chr
    end
  end.join
end

p encipher(string, shift)
