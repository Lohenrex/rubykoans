# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.


module GreedGame
	attr_reader :non_scoring_dice
	@non_scoring_dice = [2, 3, 4, 6]

	class Player
		def initialize(player_name)
			@player_name = player_name
			@score = 0
		end

		def can_accumulate?
			@score >= 300		
		end
	end
	
	class Game
		def initialize
			@player_ranking = []
			@current_turn = 0
		end
	end
end