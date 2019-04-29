require_relative './environment'
require 'pry'

puts "Welcome to the Youtube Searcher."
puts "Enter a keyword to search for videos:"
keyword = gets.chomp

videos = get_videos_from_youtube(keyword)

#step 1: print "1. title" for each video instance in the array

# videos.each do |video|
#   puts "1. #{video.title}"
# end

#step 2: print "1/2/3/4/5. #{video.title}"

counter = 1
videos.each do |video|
  puts "#{counter}. #{video.title}"
  counter += 1
end

puts "Enter the number of the video that you would like to play:"
number = gets.chomp.to_i
binding.pry

videos[number - 1].open_in_browser
#videos is an array of video instances
#videos[0] - 0 is the index number



# Write your code here
# notice there is nothing else here, not even a pry,
# add one if you'd like
