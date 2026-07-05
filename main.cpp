#include <iostream>
#include <vector>
#include <chrono>
#include <thread>

#include "./Maps.h" 
#include "./Player.h"

void drawWindow(std::vector<std::vector<int>>&);

int main() {
  // 1000 milliseconds per second, we want 60 fps, so ~16.66
  int fps = 1000/60;
  std::chrono::milliseconds tick(fps);
  int x = 0;
  int y = 0;

  Player snake;

  // Main game loop
  while (true) {
    // Clear the screen
    std::system("cls");

    // Update player pos
    snake.DrawPlayer(MapOne, 13, y);

    // Draw window with new player pos
    drawWindow(MapOne);

    // Update pos
    // I think I need to stop incrementing inside here and increment instead inside of my player.cpp and tail.cpp
    x++;
    y++;

    // 30 FPS
    std::this_thread::sleep_for(tick);
  }

  return 0;
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
