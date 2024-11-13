use std::io::{stdin, stdout, BufRead, Write};
use filler::{game_io as GameIO, GameBoard};
use filler::game_logic::get_best_position;

fn main() {
    let input = stdin();
    let mut game_board = GameBoard::new();
    loop {
        let mut lines = input.lock().lines();

        if GameIO::parse_input(&mut lines, &mut game_board).is_none() {
            break;
        }

        if let Some((x, y)) = get_best_position(&game_board) {
            println!("{} {}", y, x);
        } else {
            println!("0 0");
        }

        stdout().flush().unwrap();
        game_board.clear();
    }
}