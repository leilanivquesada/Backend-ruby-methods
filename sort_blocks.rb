class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts "Sorting alphabetically by author"

sorted_author_array = book_array.sort do |a,b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
  # if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
end

sorted_title_array = book_array.sort do |a,b|
	title1 = a.title.downcase
	title2 = b.title.downcase
	title1 <=> title2
end

sorted_count_array = book_array.sort do |a,b|
	count1 = a.count
	count2 = b.count
	count1 <=> count2
end

print "Sorted Author Array: #{sorted_author_array}"
print "Sorted Title Array: #{sorted_title_array}"
print "Sorted Count Array: #{sorted_count_array}"