# bundle exec rspec Chapter_3/3_3_2/test/fizz_buzz_test_rspec.rb
require_relative '../../3_3_2/lib/fizz_buzz'


RSpec.describe 'Fizz Buzz' do
  example 'fizz_buzz' do
    expect(fizz_buzz(1)).to eq '1'
    expect(fizz_buzz(2)).to eq '2'
    expect(fizz_buzz(3)).to eq 'fizz'
  end
end