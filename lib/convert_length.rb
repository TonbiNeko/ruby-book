UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end


# m: 1.0, ft: 3.28, in: 39.37
# 変換後の長さを求める式は
# 変換前の単位の長さ/変換前の単位の比率*変換後の単位の比率

# １メートルをインチに直すのは
# 1m / 1.0 * 39.37 = 39.37
# １フィートを１メートルは
# 1ft / 3.28 * 1.0 = 0.30 

# .round(2)で小数点第三位で四捨五入している

# １
# def convert_length(length, unit_from, unit_to)
#   39.37
# end
# convert_lengthは39.37を返す

# ２
# def convert_length(length, unit_from, unit_to)
#   units = { m: 1.0, ft: 3.28, in: 39.37 }
#   (length / units[unit_from] * units[unit_to]).round(2)
# end
# units[unit_from] 、units[unit_to]で、ハッシュから値を取得している

# def convert_length(length, from: :m, to: :m)
# キーワード引数を使ってる
# デフォルト値はどちらもシンボルのメートル
# ・・・なんのメリットがあるのだろうか？