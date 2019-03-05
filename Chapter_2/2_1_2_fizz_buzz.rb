# fizz_buzz

# 3で割り切れる数であれば　fizz
# 5で割り切れる数であれば_buzz
# 15で割り切れる数であれば fizz_buzz

account = Fizz_buzz.new
class Fizz_buzz
  def printoutput(number = nil)
    answer1 = (number / 15).to_f
    answer2 = (number / 15)
    if  answer1 - answer2 == 0
      p "fizz_buzz"
    else
      answer1 = (number / 3).to_f
      answer2 = (number / 3)
      p "fizz" if  answer1 - answer2 == 0
      answer1 = (number / 5).to_f
      answer2 = (number / 5)
      p "buzz" if  answer1 - answer2 == 0
    end
  end
  end
end