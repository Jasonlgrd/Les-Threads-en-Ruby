require 'concurrent'
require 'excon'

base_url = "http://127.0.0.1:4567/"
pages_to_crawl = %w( index about contact products )

def process_page(url)
  puts "🚀 Start scrap #{url}"
  p "✅ #{Excon.get(url).status} : #{url}"
end

pool = Concurrent::FixedThreadPool.new(3)

pages_to_crawl.each do |page|
  pool.post do
    process_page(base_url + page)
  end
end

pool.shutdown
pool.wait_for_termination