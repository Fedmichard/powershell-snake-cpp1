#include "./Player.h"
#include <cctype>
#include <conio.h>

Player::Player() {
  pos = { .x = 13, .y = 19 };
}

// 0 = EMPTY SPACE, 1 = WALL, 2 = PLAYER, 3 = FOOD
void Player::Draw(std::vector<std::vector<int>>& map) {
  // we can use map[0] because each column is the same length
  int rows = map.size();
  int cols = map[0].size();

  // Is gonna stay because as we increment pos.y/pos.x it'll eventually grow too large
  if (pos.x >= cols) {
    pos.x = pos.x % cols;
  } else if (pos.y >= rows) {
    pos.y = pos.y % rows;
  } else if (pos.x <= 0) {
    pos.x = cols - 2;
  } else if (pos.y <= 0) {
    pos.y = rows - 2;
  }

  // Debug info
  // std::cout << "Position X: " << pos.x << ", Y: " << pos.y << std::endl; 
  // std::cout << "Map X: " << cols << ", Y: " << rows << std::endl; 

  // if the position is greater or equal to the number of columns
  // draw player at the bottom
  if (pos.x >= cols - 2) {
    pos.x = pos.x % cols;
  } else if (pos.y >= rows - 2) {
    pos.y = pos.y % rows;
  } else if (pos.x < 0) {
    pos.x = pos.x % cols - 2;
  } else if (pos.y < 0) {
    pos.y = pos.y % rows - 2;
  }

  // Check position for drawing onto map
  // if the current position is 0
  if (map[pos.y].at(pos.x) == 0) {
    // Draw the player
    map[pos.y].at(pos.x) = 2;

    // if the player hits a food item
  } else if (map[pos.y].at(pos.x) == 3) {
    // create a new tail and add it to the end
    Tail* newTail = new Tail({.x = prevPos.x, .y = prevPos.y});
    body.push_back(newTail);
  }

  // Delete the previous position
  if (map[prevPos.y].at(prevPos.x) != 1) {
    // Set it's previous position as 0 so the next time it's drawn, there'll be a blank spot
    map[prevPos.y].at(prevPos.x) = 0;
  }

  // This is where I pass value to tail and call draw
  // Shouldn't even be in a loop, just be a check
  for (int i = 0; i < body.size(); i++) {
    std::cout << "Body count: " << i + 1;

    if (i != 0) {
      body[i-1]->position = body[i]->position;
    }

    body[i]->position = prevPos;
    body[i]->Draw(map);
  }

  // does a full copy of pos into prevPos
  prevPos.x = pos.x;
  prevPos.y = pos.y;

  if (_kbhit()) {
    auto key = tolower(_getch());
    switch (key) {
      case 'a':
        if (update != 0) {
          update = 1;
        }
        break;
      case 'd':
        if (update != 1) {
          update = 0;
        }
        break;
      case 'w':
        if (update != 2) {
          update = 3;
        }
        break;
      case 's':
        if (update != 3) {
          update = 2;
        }
        break;
    }
  }

  // Increment based on update value
  UpdatePosition(pos, update);
}

void Player::UpdatePosition(Position& pos, int dir) {
  switch (dir) {
    case 0:
      pos.x++;
      break;
    case 1:
      pos.x--;
      break;
    case 2:
      pos.y++;
      break;
    case 3:
      pos.y--;
      break;
  }
}

// Maybe pass the position
void Tail::Draw(std::vector<std::vector<int>>& map) {
  // Current x and y pos
  int newPosX = position.x;
  int newPosY = position.y;

  // Update player pos
  int rows = map.size();
  int cols = map[0].size();

  if (position.x >= cols) {
        newPosX = position.x % cols;
  } else if (position.y >= rows) {
        newPosY = position.y % rows;
  }

  int previousX = position.x;
  int previousY = position.y;

  if (previousY >= rows - 2) {
        previousY = previousY % rows;
  } else if (previousX >= cols - 2) {
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
}
