# FILLER

### Description

Filler is an algorithmic game where two autonomous bots compete against each other to occupy as much space as possible on a grid, called the Anfield. Each bot receives and places pieces of varying random shapes and sizes, provided by a game engine. The ultimate goal is to strategically place pieces to dominate the grid while blocking the opponent's moves.

### How to play?
Follow these instructions to set up your environment and run the game using Docker:

#### Guide
1. **Download the docker image**
   - [Click here to download the Docker image](https://assets.01-edu.org/filler/filler.zip)
2. **Unzip the downloaded file**
   - Extract the contents of the downloaded `filler.zip` file into a folder.
3. **Clone the `filler` repository**
4. **Move the contents into the Docker image folder**
   - Place all the contents of the cloned repository into the `solution` folder located inside the unzipped Docker image folder.
5. **Build and Run the Docker Container**
   - Navigate to the root of the unzipped Docker image folder.
   - Execute the following commands:
      ```bash
      docker build -t filler .
      docker run -v "$(pwd)/solution":/filler/solution -it filler
     ```
   > This builds the Docker conainter and runs it, mounting the solution inside the container.
6. **Compile and Run the Filler Game**
   - Once inside the container, navigate to the `solution` folder.
      ```shell
      cd solution
      ```
   - Use the following commands to compile and interact with the project:
      * `make build` - Compiles the project.
      * `make help` - Displays the list of available commands.

### Authors
- [Franchis Janel MOKOMBA](https://github.com/pro12x)

###### &copy; 2024 Franchis Janel MOKOMBA - Powered by _Zone01 Dakar_