# ruby Chapter_8/8_7_x.rb
module Loggable
  def self.log(text)
    puts "[LOG]#{text}"
  end
end

Loggable.log('i am here')

puts '8.8.1'
module Awesomeapi
  @base_url = ''
  @debug_mode = false

  class << self
    attr_writer :base_url

    attr_reader :base_url

    def debug_mode=(value)
      @debag_mode = value
    end

    def debug_mode
      @debag_mode
    end
  end
end
Awesomeapi.base_url = 'http://example.com'
Awesomeapi.debug_mode = true
puts Awesomeapi.base_url
puts Awesomeapi.debug_mode
