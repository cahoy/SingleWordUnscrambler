# Word Unscrambler Program, Mar01, 2015
class MysteryWord
	@corrected=nil
	@match_found=false
	def initialize(word,reference="referenceWords.txt")
		@word=word
		@reference=reference	
	end
	def unscramble()
		@match_found=false
		f=File.open(@reference,"r")
		while (ref_word=f.gets)
			srt_m = @word.downcase.split(//).sort.join.strip
			srt_r = ref_word.downcase.split(//).sort.join.strip
			if srt_m == srt_r
				@corrected=ref_word.strip
				@match_found=true
			end
		end
		f.close
		@corrected
	end
	def getCorrectedWord
		@corrected
	end
	def isMatchFound
		@match_found
	end
end

