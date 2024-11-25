
def print_board(board):
    for row in board:
        print(' '.join(row))
    print()

def check_winner(board, player):
    win_conditions = [
        [board[0][0], board[0][1], board[0][2]],  # Row 1
        [board[1][0], board[1][1], board[1][2]],  # Row 2
        [board[2][0], board[2][1], board[2][2]],  # Row 3
        [board[0][0], board[1][0], board[2][0]],  # Column 1
        [board[0][1], board[1][1], board[2][1]],  # Column 2
        [board[0][2], board[1][2], board[2][2]],  # Column 3
        [board[0][0], board[1][1], board[2][2]],  # Diagonal 1
        [board[2][0], board[1][1], board[0][2]]   # Diagonal 2
    ]
    return [player, player, player] in win_conditions

def tic_tac_toe():
    board = [[' ']*3 for _ in range(3)]
    players = ['X', 'O']
    turn = 0
    
    for _ in range(9):
        print_board(board)
        player = players[turn % 2]
        row, col = map(int, input(f"Player {player}, enter row and column (0-2): ").split())
        
        if board[row][col] != ' ':
            print("Cell already taken, try again.")
            continue
        
        board[row][col] = player
        
        if check_winner(board, player):
            print_board(board)
            print(f"Player {player} wins!")
            return
        
        turn += 1
    
    print_board(board)
    print("It's a tie!")

# Run the game
tic_tac_toe()
