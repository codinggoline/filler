pub mod game_logic;
pub mod game_io;

pub struct GameBoard {
    pub anfield: Vec<Vec<char>>,
    pub piece: Vec<Vec<char>>,
    pub player: String,
}

impl GameBoard {
    pub fn new() -> Self {
        Self {
            anfield: Vec::new(),
            piece: Vec::new(),
            player: String::new(),
        }
    }

    pub fn clear(&mut self) {
        self.piece.clear();
        self.anfield.clear();
    }
}