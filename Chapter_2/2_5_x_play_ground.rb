# ruby Chapter/2_5_x_play_ground.rb

t1 = true
t2 = false
t3 = true
t4 = false

p t1 && t2 && t3 || t3
p t1 == t2
p t1 || t2

a = 0
5.times do
  a += 1
  if a == 1
    p '今晩はブリトー'
  elsif a == 2
    p '今晩は寿司'
  elsif a == 3
    p '今晩は焼きにく'
  else
    p '今晩はタパス'
  end
end

# if文基礎
n = 11
if n > 10
  p '１０より大きい'
else
  p '１０より小きい'
end

# if文全体を=で囲むこともできる。
countly = 'italy'
greeting =
if countly == 'japan'
  'hallo'
elsif countly == 'italy'
  'chao'
else
  '???'
end

p greeting


# if文は１列に省略できる。
point =7
day = 1
if day ==1
  point*=5
end
p point

point =7
day = 1
p point*=5 if day ==1