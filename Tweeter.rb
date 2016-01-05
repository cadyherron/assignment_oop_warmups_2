class Tweeter

  def initialize
    @tweets = []
  end

  include Enumerable

  #include enumerable
  #override enumberable methods: .each

  def tweet(message)
    #store 144 amazing characters in tweets array
    @tweets << message[0..143]
  end

  def each(proc=nil)
    index = 0
    while index < @tweets.length
      block_given? ? yield(@tweets[index]) : proc.call(@tweets[index])
      index += 1    
    end
  end

end


t = Tweeter.new

t.tweet("Something or other")
t.tweet("This is my second tweet")

t.each {|msg| puts msg}
t.each {|msg| puts msg.upcase}