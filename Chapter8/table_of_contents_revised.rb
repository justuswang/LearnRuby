line_width = 50
title = "Table of Contents"
chapters = [['Getting Started',1],['Numbers',9],['Letters',13]]

puts title.center(line_width)
puts
chapter_num = 1
chapters.each do |chap|
  chapter_name = "Chapter #{chapter_num}: #{chap[0]}"
  chapter_page = "page #{chap[1]}"
  puts chapter_name.ljust(line_width - chapter_page.length) + chapter_page.rjust(chapter_page.length)
  chapter_num += 1
end
