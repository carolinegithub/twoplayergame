require 'colored'


	def game

		1.times do 

		life_of_player1 = 3
		life_of_player2 = 3
		numbers = Array(1..20)
		operation = ["+" , "-" , "*" ]

		puts "What is the first player's name?"
		name1 = gets.chomp
		player_id1 = name1


		puts "What is the second player's name?"
		name2 = gets.chomp
		player_id2 = name2
		
		
		until (life_of_player1 == 0 || life_of_player2 == 0) 
			first_number = numbers.sample
			second_number = numbers.sample
			random_operation = operation.sample

	  	puts "What is #{first_number} #{random_operation} #{second_number} equal?"
	  	answer = gets.chomp.to_i
	 

			if answer == eval(first_number.to_s + random_operation + second_number.to_s)
				puts "Correct!".green
			else
				puts "Wrong!".red
				if player_id1 == name1
					life_of_player1 -= 1
				else
					life_of_player2 -= 1
				end
			end

			puts "#{player_id1} has the life of #{life_of_player1}."
			puts "#{player_id2} has the life of #{life_of_player2}."

			#loop

			if player_id1 == name1
				player_id1 = player_id2
			elsif player_id2 == name2
				player_id1 = name1
			end 

		end

		
			puts "Would you like to restart the game? yes/no"
			restart_answer = gets.chomp

			if restart_answer == "no"
				exit
			elsif restart_answer == "yes"
				redo
			end	
		end
	end

game




