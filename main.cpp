#include <conio.h>
#include <iostream>
#include <vector>
#include <chrono>
#include <thread>

#include "./Maps.h" 
#include "./Player.h"

void drawWindow(std::vector<std::vector<int>>&);
void input();

int main() {
  // 1000 milliseconds per second, so ~16.66
  // We want to draw 60 frames in a single second
  int fps = 1000/60;
  std::chrono::milliseconds tick(fps);

  // Snake player
  Player* snake = new Player;

  // Main game loop
  while (true) {
    // Clear the screen
    std::system("cls");

    // Update player pos
    // snake.DrawPlayer(MapOne, 13, y);
    // No longer passing the position within here
    // This isn't really draw, we're writing to a map we specified
    snake->Draw(MapOne);

    // Draw window with new player pos
    // Draw the map itself with the data
    drawWindow(MapOne);

    // 60 FPS
    std::this_thread::sleep_for(tick);
  }

  return 0;
}

void input() {
  if (_kbhit()) {
    switch;
  }
}

void drawWindow(std::vector<std::vector<int>>& map) {
  // This top level for loop iterates through every single row
  for (int row = 0; row < map.size(); row++) {
    // This loop iterates through number in that vector
    std::cout << "\n";
    for (int col = 0; col < map[row].size(); col++) {
      if (map[row].at(col) == 1) {
        std::cout << "#";
      } else if (map[row].at(col) == 2) {
        std::cout << "%";
      } else if (map[row].at(col) == 3) {
        std::cout << "o";
      } else {
        std::cout << " ";
      }
    }
  }
}
