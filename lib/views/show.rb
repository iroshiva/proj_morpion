
class Show

  def initialize(game)
    @game = game
  end

  def show_board
    rows_morp = [
      [ @game.board.board_array[0].symbols, @game.board.board_array[1].symbols, @game.board.board_array[2].symbols],
      [ @game.board.board_array[3].symbols, @game.board.board_array[4].symbols, @game.board.board_array[5].symbols],
      [ @game.board.board_array[6].symbols, @game.board.board_array[8].symbols, @game.board.board_array[8].symbols] 
    ]
    Terminal::Table.new :headings => ['1','2','3'],:rows => rows_morp
  end

end