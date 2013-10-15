line_width = 50
title = "Table of Contents"
chap_1 = "Chapter 1: Getting Started"
chap_2 = "Chapter 2: numbers"
chap_3 = "Chapter 3: Letters"
page_chap_1 = "page  1"
page_chap_2 = "page  9"
page_chap_3 = "page 13"

puts title.center(line_width)
puts
puts chap_1.ljust(line_width - page_chap_1.length) + page_chap_1.rjust(page_chap_1.length)
puts chap_2.ljust(line_width - page_chap_2.length) + page_chap_2.rjust(page_chap_2.length)
puts chap_3.ljust(line_width - page_chap_3.length) + page_chap_3.rjust(page_chap_3.length)
