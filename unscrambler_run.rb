require_relative "unscrambler"

if ARGV.empty?
	puts "Input random word:"
	STDOUT.flush
	input_word=gets.chomp
else
	input_word=ARGV[0].chomp
end

w=MysteryWord.new(input_word)
correctedWord=w.unscramble

if w.isMatchFound==true
	print "Answer: " + correctedWord
else
	print "Sorry, no possible match.\n" 
end