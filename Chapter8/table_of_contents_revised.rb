line_width = 50
title = "Table of Contents"
chapter_num = [1,2,3]
chapter_name = ['Getting Started','Numbers','Letters']
chapter_page = [1,9,13]

puts title.center(line_width)
puts
chapter_num.each do |num|
  chapter = "Chapter #{num}: #{chapter_name[num - 1]}"
  page_chapter = "page #{chapter_page[num - 1]}"
  puts chapter.ljust(line_width - page_chapter.length) + page_chapter.rjust(page_chapter.length)
end
