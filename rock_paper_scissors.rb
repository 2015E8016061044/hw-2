class RockPaperScissors
	class NoSuchStrategyError < StandardError ;	end
    		
	def self.winner(player1, player2)
	# YOUR CODE HERE
		case player1[1]
		when "R"
			case player2[1]
			when "R"
				return player1
			when "S"
				return player1
			when "P"
				return player2
			else
				begin
					raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S"
				rescue NoSuchStrategyError => e
					return e
				end
			end
		when "S"
			case player2[1]
			when "R"
				return player2
			when "S"
				return player1
			when "P"
				return player1
			else
				begin
					raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S"
				rescue NoSuchStrategyError => e
					return e
				end	
			end
		when "P"
			case player2[1]
			when "R"
				return player1
			when "S"
				return player2
			when "P"
				return player1
			else
				begin
					raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S"
				rescue NoSuchStrategyError => e
					return e
				end	
			end
		else
		    begin
				raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S"
			rescue NoSuchStrategyError => e
				return e
			end	

		end
	end

	def self.tournament_winner(tournament)
	# YOUR CODE HERE
		if tournament[0].is_a? String
			return tournament
		end
		a = self.tournament_winner(tournament[0])
		b = self.tournament_winner(tournament[1])
		return self.winner(a,b)
	end

end

player1 = Array["Armando", "P"]
player2 = Array["Dave", "S"]
puts RockPaperScissors.winner(player1,player2)
