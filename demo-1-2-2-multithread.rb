thread1 = Thread.new do
  puts "🚀 Call service 1"
  sleep 2
  puts "✅ Response service 1"
end

thread2 = Thread.new do
  puts "🚀 Call service 2"
  sleep 4
  puts "✅ Response service 2"
end

thread3 = Thread.new do
  puts "🚀 Call service 3"
  sleep 3
  puts "✅ Response service 3"
end

thread1.join
thread2.join
thread3.join