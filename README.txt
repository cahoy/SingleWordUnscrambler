================================================================
======================= Word Unscrambler =======================
================================================================

1. unscrambler.rb
-----------------
Consist of MysteryWord class, which contain the "engine" of the 
unscrambler algorithm. It will compare the mystery word with
a list of reference words, in referenceWords.txt file.


2. unscrambler_run.rb
---------------------
Run this file from the ruby console, either by doing
   $ruby unscrambler_run.rb
or
   $ruby unscrambler_run.rb <random word>
If the random word is not supplied as at the command prompt, the
program will prompt the user for an input.

There are 3 parts of this file
  1. input stage : determining whether to get the random word
     from command prompt argument, or to prompt the user.
  2. processing stage : creating a mystery word, and attempt to
     unscramble it.
  3. output stage : to decide what message to be displayed,
     based on the result of unscrambling attempt.


3. testUnit_unscrambler.rb
--------------------------
Run this file from the ruby console, by doing
   $ruby testUnit_unscrambler.rb

This will test the unscramble method by ensuring that
 1. all the reference words can be displayed as an output.
 2. works with both scrambled and unscrambled word as the input.
 3. the method is able to ignore lower/upper case
 4. the method is able to ignore white characters, be it
    located in the beginning/middle/end of the word.
 5. invalid input will be returned as nil, without error.

================================================================
======================= Word Unscrambler =======================
================================================================