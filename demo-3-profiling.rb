require 'net/http'

$global_counter = 0

$mutex = Mutex.new

def increment_counter
  100_000_000.times do
    $mutex.synchronize do
      $global_counter += 1
    end
  end
end

threads = []

threads << Thread.new do
  uri = URI.parse("http://localhost:4567/test")
  Net::HTTP.get_response(uri)
end

2.times do
  threads << Thread.new { increment_counter }
end

threads << Thread.new do
  uri = URI.parse("http://localhost:4567/fast")
  Net::HTTP.get_response(uri)
end

threads.each(&:join)

puts "Final value of counter: #{$global_counter}"