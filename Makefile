.PHONY: help clean build bender1-m0 bender1-m1 bender1-m2 bender2-m0 bender2-m1 bender2-m2 h2d1-m0 h2d1-m1 h2d1-m2 h2d2-m0 h2d2-m1 h2d2-m2 wall1-m0 wall1-m1 wall1-m2 wall2-m0 wall2-m1 wall2-m2 term1-m0 term1-m1 term1-m2 term2-m0 term2-m1 term2-m2

# Variables
MAIN = ..
GAME = linux_game_engine
MAPS = maps
ROBOTS = linux_robots
SOLUTION = filler

# Help
help:
	@clear
	@echo "\t\t🤖 Welcome to the Filler project!\n\t\t     🔧 Available commands\n\t\t\t[make <command>]\n"
	@echo "  - clean: Clean the project."
	@echo "  - build: Build the project.\n"
	@echo "  - bender1-m0: Run Bender on Map 00 as Player 1."
	@echo "  - bender1-m1: Run Bender on Map 01 as Player 1."
	@echo "  - bender1-m2: Run Bender on Map 02 as Player 1."
	@echo "  - bender2-m0: Run Bender on Map 00 as Player 2."
	@echo "  - bender2-m1: Run Bender on Map 01 as Player 2."
	@echo "  - bender2-m2: Run Bender on Map 02 as Player 2.\n"
	@echo "  - h2d1-m0: Run H2-D2 on Map 00 as Player 1."
	@echo "  - h2d1-m1: Run H2-D2 on Map 01 as Player 1."
	@echo "  - h2d1-m2: Run H2-D2 on Map 02 as Player 1."
	@echo "  - h2d2-m0: Run H2-D2 on Map 00 as Player 2."
	@echo "  - h2d2-m1: Run H2-D2 on Map 01 as Player 2."
	@echo "  - h2d2-m2: Run H2-D2 on Map 02 as Player 2.\n"
	@echo "  - wall1-m0: Run Wall-E on Map 00 as Player 1."
	@echo "  - wall1-m1: Run Wall-E on Map 01 as Player 1."
	@echo "  - wall1-m2: Run Wall-E on Map 02 as Player 1."
	@echo "  - wall2-m0: Run Wall-E on Map 00 as Player 2."
	@echo "  - wall2-m1: Run Wall-E on Map 01 as Player 2."
	@echo "  - wall2-m2: Run Wall-E on Map 02 as Player 2.\n"
	@echo "  - term1-m0: Run Terminator on Map 00 as Player 1."
	@echo "  - term1-m1: Run Terminator on Map 01 as Player 1."
	@echo "  - term1-m2: Run Terminator on Map 02 as Player 1."
	@echo "  - term2-m0: Run Terminator on Map 00 as Player 2."
	@echo "  - term2-m1: Run Terminator on Map 01 as Player 2."
	@echo "  - term2-m2: Run Terminator on Map 02 as Player 2.\n"

# Clean the project
clean:
	@clear
	@echo "🧹 Cleaning..."
	@cargo clean
	@rm -f $(MAIN)/$(SOLUTION)
	@echo "✅  Clean complete."

# Build the project
build:
	@clear
	@echo "🔨 Building solution..."
	@cargo build --release
	@cp target/release/$(SOLUTION) $(MAIN)/
	@echo "✅  Build complete."

# Robot Bender Map 00 (Player 1)
bender1-m0:
	@clear
	@echo "🤖 Running Bender... (I am player 1)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 00 complete."

# Robot Bender Map 01 (Player 1)
bender1-m1:
	@clear
	@echo "🤖 Running Bender... (I am player 1)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 01 complete."

# Robot Bender Map 02 (Player 1)
bender1-m2:
	@clear
	@echo "🤖 Running Bender... (I am player 1)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 02 complete."

# Robot Bender Map 00 (Player 2)
bender2-m0:
	@clear
	@echo "🤖 Running Bender... (I am player 2)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 00 complete."

# Robot Bender Map 01 (Player 2)
bender2-m1:
	@clear
	@echo "🤖 Running Bender... (I am player 2)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 01 complete."

# Robot Bender Map 02 (Player 2)
bender2-m2:
	@clear
	@echo "🤖 Running Bender... (I am player 2)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/bender
	@echo "\n✅  Map 02 complete."

# Robot H2-D2 Map 00 (Player 1)
h2d1-m0:
	@clear
	@echo "🤖 Running H2-D2... (I am player 1)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 00 complete."

# Robot H2-D2 Map 01 (Player 1)
h2d1-m1:
	@clear
	@echo "🤖 Running H2-D2... (I am player 1)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 01 complete."

# Robot H2-D2 Map 02 (Player 1)
h2d1-m2:
	@clear
	@echo "🤖 Running H2-D2... (I am player 1)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 02 complete."

# Robot H2-D2 Map 00 (Player 2)
h2d2-m0:
	@clear
	@echo "🤖 Running H2-D2... (I am player 2)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 00 complete."

# Robot H2-D2 Map 01 (Player 2)
h2d2-m1:
	@clear
	@echo "🤖 Running H2-D2... (I am player 2)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 01 complete."

# Robot H2-D2 Map 02 (Player 2)
h2d2-m2:
	@clear
	@echo "🤖 Running H2-D2... (I am player 2)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/h2_d2
	@echo "\n✅  Map 02 complete."

# Robot Wall-E Map 00 (Player 1)
wall1-m0:
	@clear
	@echo "🤖 Running Wall-E... (I am player 1)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 00 complete."

# Robot Wall-E Map 01 (Player 1)
wall1-m1:
	@clear
	@echo "🤖 Running Wall-E... (I am player 1)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 01 complete."

# Robot Wall-E Map 02 (Player 1)
wall1-m2:
	@clear
	@echo "🤖 Running Wall-E... (I am player 1)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 02 complete."

# Robot Wall-E Map 00 (Player 2)
wall2-m0:
	@clear
	@echo "🤖 Running Wall-E... (I am player 2)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 00 complete."

# Robot Wall-E Map 01 (Player 2)
wall2-m1:
	@clear
	@echo "🤖 Running Wall-E... (I am player 2)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 01 complete."

# Robot Wall-E Map 02 (Player 2)
wall2-m2:
	@clear
	@echo "🤖 Running Wall-E... (I am player 2)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/wall_e
	@echo "\n✅  Map 02 complete."

# Robot Terminator Map 00 (Player 1)
term1-m0:
	@clear
	@echo "🤖 Running Terminator... (I am player 1)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 00 complete."

# Robot Terminator Map 01 (Player 1)
term1-m1:
	@clear
	@echo "🤖 Running Terminator... (I am player 1)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 01 complete."

# Robot Terminator Map 02 (Player 1)
term1-m2:
	@clear
	@echo "🤖 Running Terminator... (I am player 1)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p1 $(MAIN)/$(SOLUTION) -p2 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 02 complete."

# Robot Terminator Map 00 (Player 2)
term2-m0:
	@clear
	@echo "🤖 Running Terminator... (I am player 2)"
	@echo "\n========================== MAP 00 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map00 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 00 complete."

# Robot Terminator Map 01 (Player 2)
term2-m1:
	@clear
	@echo "🤖 Running Terminator... (I am player 2)"
	@echo "\n========================== MAP 01 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map01 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 01 complete."

# Robot Terminator Map 02 (Player 2)
term2-m2:
	@clear
	@echo "🤖 Running Terminator... (I am player 2)"
	@echo "\n========================== MAP 02 =========================="
	$(MAIN)/$(GAME) -f $(MAIN)/$(MAPS)/map02 -p2 $(MAIN)/$(SOLUTION) -p1 $(MAIN)/$(ROBOTS)/terminator
	@echo "\n✅  Map 02 complete."

clean-build: clean build