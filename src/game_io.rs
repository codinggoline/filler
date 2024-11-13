use std::io::*;
use crate::GameBoard;

pub fn parse_input(lines: &mut Lines<StdinLock>, game_board: &mut GameBoard) -> Option<()> {
    while let Some(Ok(line)) = lines.next() {
        if line.starts_with("$$$") {
            parse_player_info(&line, game_board);
        } else if line.starts_with("Anfield") {
            parse_anfield(lines, game_board, &line)?;
        } else if line.starts_with("Piece") {
            parse_piece(lines, game_board, &line)?;
            return Some(());
        }
    }
    None
}

pub fn parse_player_info(line: &str, game_board: &mut GameBoard) {
    let player_parts: Vec<&str> = line.split_whitespace().collect();
    game_board.player = player_parts[2].to_owned()
}

pub fn parse_anfield(lines: &mut Lines<StdinLock>, game_board: &mut GameBoard, line: &str) -> Option<()> {
    let parts: Vec<&str> = line.split_whitespace().collect();
    let height: usize = parts[2].trim_end_matches(':').parse().ok()?;

    let _ = lines.next()?;

    for _ in 0..height {
        if let Some(Ok(board_line)) = lines.next() {
            let chars: Vec<char> = board_line[4..].chars().collect();
            game_board.anfield.push(chars);
        }
    }
    Some(())
}

pub fn parse_piece(lines: &mut Lines<StdinLock>, game_board: &mut GameBoard, line: &str) -> Option<()> {
    let parts: Vec<&str> = line.split_whitespace().collect();
    let height: usize = parts[2].trim_end_matches(':').parse().ok()?;

    for _ in 0..height {
        if let Some(Ok(piece_line)) = lines.next() {
            let chars: Vec<char> = piece_line.chars().collect();
            game_board.piece.push(chars);
        }
    }
    Some(())
}

