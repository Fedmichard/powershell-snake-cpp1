#include "./Player.h"
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
  }

  // Debug info
  std::cout << "Position X: " << pos.x << ", Y: " << pos.y << std::endl; 

  // if the position is greater or equal to the number of columns
  // draw player at the bottom
  if (pos.x >= cols - 2) {
    pos.x = pos.x % cols;
  } else if (pos.y >= rows - 2) {
    pos.y = pos.y % rows;
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
  if (body.size() > 0) {
    // we shouldn't do it this way because every tail is being set to prevPos.x and prevPos.y
    // This probably means we need draw call to call itself iteratively
    body[0]->Draw(map, prevPos.x, prevPos.y);
  }

  // does a full copy of pos into prevPos
  prevPos.x = pos.x;
  prevPos.y = pos.y;

  // Increment y
  pos.y++;
}

// Maybe pass the position
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
}
