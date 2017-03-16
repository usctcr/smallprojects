INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], #rows
								[1,4,7], [2,5,8], [3,6,9], #columns
								[1,5,9], [3,5,7]] #diagonals

def prompt(msg)
	puts "=> #{msg}"
end

def empty_squares(board)
	board.keys.select{ |num| board[num] == INITIAL_MARKER }
end

def player_places_piece!(board)
	square = INITIAL_MARKER
	loop do
		prompt "Pick a square (#{empty_squares(board).join(', ')}):"
		square = gets.chomp.to_i
		break if empty_squares(board).include?(square)
					prompt "Sorry but that's not a valid choice."
	end
		board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
	square = empty_squares(board).sample
	board[square] = COMPUTER_MARKER
end

def board_full?(board)
	empty_squares(board).empty?
end

def someone_won?(board)
	!!detect_winner(board)
end

def detect_winner(board)
	WINNING_LINES.each do |line|
		if board[line[0]] == PLAYER_MARKER && board[line[1]] == PLAYER_MARKER && board[line[2]] == PLAYER_MARKER
		return 'Player'
		elsif board[line[0]] == COMPUTER_MARKER && board[line[1]] == COMPUTER_MARKER && board[line[2]] == COMPUTER_MARKER
		return 'Computer'
		end
	end
	nil
end

def display_board(brd)
	system 'clear'
	puts "Player is #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
	puts "     |     |"
	puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
	puts "     |     |"
	puts " "
end

def initialize_board
	new_board = {}
	(1..9).each { |num| new_board[num] = INITIAL_MARKER }
	new_board
end

loop do
	board = initialize_board

	loop do
		display_board(board)
		player_places_piece!(board)
		break if someone_won?(board) || board_full?(board)
		computer_places_piece!(board)
		break if someone_won?(board) || board_full?(board)
	end

	display_board(board)
	
	if someone_won?(board)
		prompt "#{detect_winner(board)} won!"
	else
		prompt "It's a tie!"
	end

	prompt "Play again? (y/n)"
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic-tac-toe. Good-bye!"