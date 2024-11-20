pages_to_crawl = %w( index about contact products products/1 products/2 products/3 products/4 products/5 )
pages_to_crawl.each do |page|
  Thread.new { puts page }
end