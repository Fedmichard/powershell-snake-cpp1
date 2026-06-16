#include "./Player.h"

// Need to look into this later, I'm assuming when I add the new tail it throws out of range
/*
* terminate called after throwing an instance of 'std::out_of_range'
* what():  vector::_M_range_check: __n (which is 18446744071851472544) >= this->size() (which is 76)
*/

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

  Position previousTailOne{};

  if (tailOne != nullptr) {
    previousTailOne = tailOne->position;
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
    if (!tailOne->next) {
      Tail* newTail = new Tail({ .x = previousX, .y = previousY });

      tailOne->next = newTail;
    }

    map[pos.y].at(pos.x) = 0;
  }

  if (tailOne != nullptr) {
    tailOne->position = {
      .x = previousX,
      .y = previousY
    };

    tailOne->Draw(map, previousX, previousY);
  }
}

void Tail::Draw(std::vector<std::vector<int>>& map, int x, int y) {
  // Current x and y pos
  int newPosX = x;
  int newPosY = y;

  // Update player pos
  int rows = map.size();
  int cols = map[0].size();

  if (x >= cols) {
        newPosX = x % cols;
  } else if (y >= rows) {
        newPosY = y % rows;
  }

  int previousX = position.x;
  int previousY = position.y;

  if (previousY >= rows - 3) {
        previousY = previousY % rows;
  } else if (previousX >= cols - 3) {
        previousX = previousX % cols;
  }

  // Can probably use % to create snake like mechanic
  // I believe we -2 because the player doesn't start at the first level or last on either X or Y
  // at pos 0 there will be a # to represent the wall
  // at the last pos there will be a # to represent the wall
  if (newPosY >= rows - 2) {
        newPosY = newPosY % rows;
  } else if (previousX >= cols - 2) {
        newPosX = newPosX % cols;
  }

  // If the preivous position x, y wasn't a wall
  if (map[previousY].at(previousX) != 1) {
        // Set it's previous position as 0 so the next time it's drawn, there'll be a blank spot
        map[previousY].at(previousX) = 0;
  }

  position.x = newPosX;
  position.y = newPosY;

  // As long as there is a 0 (for empty space), draw player
  if (map[position.y].at(position.x) == 0) {
        // Y = row; X = column
        map[position.y].at(position.x) = 2;
  }

  if (next != nullptr) {
        next->Draw(map, previousX, previousY);
  }
}
