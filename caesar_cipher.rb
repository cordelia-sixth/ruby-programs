def caesar_cipher(string = "ABC", shift = 3)
  # 暗号化したい文字列を文字ごとの配列に変換してさらに文字コードに変換して配列にする
  charArray = string.chars.map(&:ord)
  
  result = []
  result << charArray.map do |char|
    if (char + shift) < 91
      (char + shift).chr
    else
      (char - 26).chr
    end
  end.join
  
  return result
end
