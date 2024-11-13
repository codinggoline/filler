use crate::GameBoard;

pub struct PlayerInfo {
    pub player: char,
    pub player_alt: char,
    pub enemy: char,
    pub enemy_alt: char,
}

impl PlayerInfo {
    pub fn from_player_id(player_id: &str) -> Self {
        if player_id == "p1" {
            Self {
                player: '@',
                player_alt: 'a',
                enemy: 's',
                enemy_alt: '$',
            }
        } else {
            Self {
                player: 's',
                player_alt: '$',
                enemy: 'a',
                enemy_alt: '@',
            }
        }
    }
}

pub fn can_be_placed_piece(board: &[Vec<char>], piece: &[Vec<char>], x: usize, y: usize, player_info: &PlayerInfo) -> bool {
    let mut overlap = 0;

    for (i, piece_row) in piece.iter().enumerate() {
        for (j, &piece_cell) in piece_row.iter().enumerate() {
            if piece_cell == '.' {
                continue;
            }

            let board_x = x + i;
            let board_y = y + j;

            if board_x >= board.len() || board_y >= board[0].len() {
                return false;
            }

            let cell = board[board_x][board_y];

            if cell == player_info.enemy || cell == player_info.enemy_alt {
                return false;
            }

            if cell == player_info.player || cell == player_info.player_alt {
                overlap += 1;
            }
        }
    }
    overlap == 1
}

pub fn get_valid_positions(board: &GameBoard) -> Vec<(usize, usize)> {
    let player_info = PlayerInfo::from_player_id(&board.player);
    let mut valid_positions = Vec::new();

    for x in 0..board.anfield.len() {
        for y in 0..board.anfield[0].len() {
            if can_be_placed_piece(&board.anfield, &board.piece, x, y, &player_info) {
                valid_positions.push((x, y));
            }
        }
    }
    valid_positions
}

pub fn distance_between_points(x1: usize, y1: usize, x2: usize, y2: usize) -> f64 {
    let x = (x2 - x1) as f64;
    let y = (y2 - y1) as f64;
    (x.powi(2) + y.powi(2)).sqrt()
}

pub fn min_distance(enemy_positions: &[(usize, usize)], x1: usize, y1: usize) -> f64 {
    enemy_positions
        .iter()
        .map(|&(ex, ey)| distance_between_points(x1, y1, ex, ey))
        .min_by(|&a, &b| a.partial_cmp(&b).unwrap_or(std::cmp::Ordering::Equal))
        .unwrap_or(f64::INFINITY)
}

pub fn evaluate_position(board: &GameBoard, x: usize, y: usize, player_info: &PlayerInfo) -> f64 {
    let enemy_positions: Vec<_> = board.anfield.iter().enumerate().flat_map(|(i, row)| {
        row.iter()
            .enumerate()
            .filter(|&(_, &ch)| (ch == player_info.enemy || ch == player_info.enemy_alt))
            .map(move |(j, _)| (i, j))
    }).collect();

    let min_dist = min_distance(&enemy_positions, x, y);
    let enemy_density = enemy_positions.len() as f64 / (board.anfield.len() * board.anfield[0].len()) as f64;

    min_dist + enemy_density
}

pub fn get_best_position(board: &GameBoard) -> Option<(usize, usize)> {
    let player_info = PlayerInfo::from_player_id(&board.player);
    let mut best_position = None;
    let mut best_score = f64::INFINITY;

    for x in 0..board.anfield.len() {
        for y in 0..board.anfield[0].len() {
            if can_be_placed_piece(&board.anfield, &board.piece, x, y, &player_info) {
                let score = evaluate_position(board, x, y, &player_info);
                if score < best_score {
                    best_score = score;
                    best_position = Some((x, y));
                }
            }
        }
    }
    best_position
}