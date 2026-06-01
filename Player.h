#pragma once

#include <vector>
#include <iostream>

struct Position {
        int x;
        int y;
};

struct Tail;

class Player {
private:
        Tail* tailOne;

        Position pos {
                .x = 0,
                .y = 0
        };

public:
        Player(int x, int y);
        Player();

        void DrawPlayer(std::vector<std::vector<int>>& map, int x, int y);
};

// tail -> tail -> tail -> head (player)
// (current pos)tail -(previous Pos)-> (current pos)tail -(previous Pos)-> (current pos)tail -(previous Pos)-> head (player)
struct Tail {
        Position position { .x = 0, .y = 0 };
        Position previousPosition { .x = 0, .y =0 };
        Tail* next;

        Tail(Position pos) {
                position = pos;
                next = nullptr;
        }

        void Draw(std::vector<std::vector<int>>& map, int x, int y) {
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
};
