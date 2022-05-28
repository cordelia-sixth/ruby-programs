require "test/unit"

def caesar_cipher(string = "ABC", shift = 3)
  charArray = string.chars.map(&:ord)

  charArray.map do |char|
    if (char + shift) < 91
      (char + shift).chr
    else
      (char - 26).chr
    end
  end.join
end

class CaeasarCipher
  def encrypt(string, shift)
    # 文字列とシフト数を受け取る
    
    # 文字列のコードポイントを取得する
    code_points = string.codepoints
    
    # シフト数だけ文字をシフトする
    code_points.map do |point|
      if (point + shift) < "Z".code_points
        (point + shift).chr
      else
        (point + shift - 26).chr
      end
    end.join
    
    # コードポイントを文字に戻す
    # 文字列を返す
  end
end

caesar = CaeasarCipher.new
puts caesar.encrypt("XYZ", 3)

class TestCaesar < Test::Unit::TestCase
  test ""
end

# returnが不要
# 配列ではなく文字列を返す方が自然
# テストコードを書く
# コードポイントを得るライブラリを使う
# 変数名をsnake_caseに、かつ変数名をふさわしくする
