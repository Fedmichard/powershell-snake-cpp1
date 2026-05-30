#include "./Player.h"

Player::Player() {
  pos.x = 0;
  pos.y = 0;

  Tail* newTail = new Tail(Position{.x = 0, .y = 0});
  tailOne = newTail;
}

Player::Player(int x, int y) {
  pos.x = x;
  pos.y = y;
  
  Tail* newTail = new Tail(Position{.x = 0, .y = 0});
  tailOne = newTail;
}

// Need a way to clear the screen before each draw
// Flow will be:
//  1. Clear Screen
//  2. drawPlayer
//  3. drawWindow
void Player::DrawPlayer(std::vector<std::vector<int>>& map, int x, int y) {
  std::cout << "Player x: " << pos.x << ", y: " << pos.y << std::endl;

  // Track X and Y
  int posX = x;
  int posY = y;

  // Update player pos
  int rows = map.size();
  int cols = map[0].size();
 
  // The issue with my last problem was that if the input was too big
  // It would cause an exception error because it was setting the previous value to the 100 that I was putting in main
  if (x >= cols) {
    posX = x % cols;
  } else if (y >= rows) {
    posY = y % rows;
  }

  // Current x and y pos
  int previousX = pos.x;
  int previousY = pos.y;

  Position previousTailOne;

  if (tailOne != nullptr) {
    previousTailOne = tailOne->position;

    tailOne->position = {
      .x = previousX,
      .y = previousY
    };
  }

  // Can probably use % to create snake like mechanic
  // I believe we -2 because the player doesn't start at the first level or last on either X or Y
  // at pos 0 there will be a # to represent the wall
  // at the last pos there will be a # to represent the wall
  if (posY >= rows - 2) {
    posY = posY % rows;
  } else if (posX >= cols - 2) {
    posX = posX % cols;
  }

  // If the preivous position x, y wasn't a wall
  if (map[previousY].at(previousX) != 1) {
    // Set it's previous position as 0 so the next time it's drawn, there'll be a blank spot
    map[previousY].at(previousX) = 0;
  }

  // As it passes along essentially erase its trace
  if (map[previousTailOne.y].at(previousTailOne.x) != 1) {
    map[previousTailOne.y].at(previousTailOne.x) = 0;
  }

  // Set new X and Y
  pos.x = posX;
  pos.y = posY;

  // As long as there is a 0 (for empty space), draw player
  if (map[pos.y].at(pos.x) == 0) {
    // Y = row; X = column
    map[pos.y].at(pos.x) = 2;
    // if the player hits a food item
  } else if (map[pos.y].at(pos.x) == 3) {
    Position newPosition;

    if (!tailOne->next) {
      Tail newTail(tailOne->previousPosition);

      tailOne->next = &newTail;
    }

    map[pos.y].at(pos.x) = 0;
  }

  if (tailOne != nullptr) {
    tailOne->Draw(map, _length);
  }

  if (tailOne->next != nullptr) {
    tailOne->next->Draw(map, _length);
  }
}
