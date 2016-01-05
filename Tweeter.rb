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

  def each
    
  end

end

tweet = Tweeter.new

print tweet.tweet("Something or other")