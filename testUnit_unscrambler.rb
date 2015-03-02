require_relative "unscrambler"
require "test/unit"
 
class TestTheUnscrambler < Test::Unit::TestCase
	def test_AllPossibleOutput
		assert_equal("Astronaut", MysteryWord.new("stonatura").unscramble,"test word: stonatura")
		assert_equal("Engineer", MysteryWord.new("engeenir").unscramble,"test word: engeenir")
		assert_equal("Jakarta", MysteryWord.new("Jatakar").unscramble,"test word: jakarta")
		assert_equal("Bandung", MysteryWord.new("bandung").unscramble,"test word: bandung")
		assert_equal("Singapore", MysteryWord.new("singapore").unscramble,"test word: singapore")
		assert_equal("Veritrans", MysteryWord.new("vertransi").unscramble,"test word: vertransi")
		assert_equal("Qualcomm", MysteryWord.new("commqual").unscramble,"test word: commqual")
		assert_equal("MuchWow", MysteryWord.new("wowmuch").unscramble,"test word: wowmuch")
		assert_equal("SoGood", MysteryWord.new("sogodo").unscramble,"test word: sogodo")
		assert_equal("Excellent", MysteryWord.new("excellent").unscramble,"test word: excellent")
	end
  
	def test_ObviouslyPassing
		assert_equal("Jakarta", MysteryWord.new("Jakarta").unscramble) 
	end

	def test_lowerCaseUpperCase
		assert_equal("Jakarta", MysteryWord.new("jakarta").unscramble) 
		assert_equal("Jakarta", MysteryWord.new("JAKARTA").unscramble) 
	end
  
	def test_WhiteSpace
		assert_equal("Jakarta", MysteryWord.new("ja kar ta").unscramble)  
		assert_equal("Jakarta", MysteryWord.new(" ja kar ta").unscramble)  
		assert_equal("Jakarta", MysteryWord.new("ja kar ta ").unscramble)  
	end
 
	def test_ExpectNil
		assert_equal(nil, MysteryWord.new("kkkkk").unscramble)  
		assert_equal(nil, MysteryWord.new("").unscramble)  
		assert_equal(nil, MysteryWord.new("12345").unscramble)  
	end 
end