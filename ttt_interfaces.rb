# indicating which methods and variables are publicly available and how to call them

Class: TicTacToe

@board = private (no attr_accessor), call with @board
@player_x = private (no attr_accessor), call with @player_x
@player_y = private (no attr_accessor), call with @player_y
@current_player = private (no attr_accessor), call with @current_player
play = public, TicTacToe.play (call with instance_name.play)
check_game_over = public, instance_name.check_game_over
check_victory = public, instance_name.check_victory
check_draw = public, instance_name.check_draw
switch_players = public, instance_name.switch_players



Class: Player
@name = public, (yes attr_accessor), call with @name or instance_name.name
@piece = public, (yes attr_accessor), call with @piece or instance_name.name
@board = private (no attr_accessor), call with @board
get_coordinates = public, instance_name.get_coordinates
ask_for_coordinates = public, instance_name.ask_for_coordinates
validate_coordinates_format = public, instance_name.validate_coordinates_format



Class: Board
@board = private (no attr_accessor), call with @board
render = public, instance_name.render
add_piece = public, instance_name.add_piece
piece_location_valid? = public, instance_name.piece_location_valid?
piece_location_within_valid_coordinates? = public, instance_name.piece_location_within_valid_coordinates?
coordinates_available? = public, instance_name.coordinates_available?
winning_combination? = public, instance_name.winning_combination?
winning_diagonal? = public, instance_name.winning_diagonal?
winning_vertical? = public, instance_name.winning_vertical?
winning_horizontal? = public, instance_name.winning_horizontal?
diagonals = public, instance_name.diagonals
verticals = public, instance_name.verticals
horizontals = public, instance_name.horizontals
full? = public, instance_name.full?
