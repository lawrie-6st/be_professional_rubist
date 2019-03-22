def to_hex(r, g, b)
  hex = '#'
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  hex
end

# 上記の文をリファクタリングするとこのようになる。
def to_hex_v2(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end

# 上記の文をリファクタリングするとこのようになる。
# scanはwの数だけ分割してくれる。
def to_ints_v2(hex)
  hex.scan(/\w\w/).map(&:hex)
end