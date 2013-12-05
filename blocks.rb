class Logger

  attr_reader :messages

  def initialize
    @messages = []
  end

  def log_it(message)
    puts "before #{message}"
    yield
    puts "after #{message}"
    #yield
  end
end

@logger = Logger.new

#puts "it's going to happen"
@logger.log_it "The stuff happened" do

  puts "it happened"
 end

  