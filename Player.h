#pragma once

#include <vector>

struct Position {
        int x;
        int y;
};

struct Tail;

class Player {
private:
        Tail* tailOne;
        int _length = 2;

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
        Position position;
        Tail* next;

        Tail(Position pos) {
                position = pos;
        }

        void Draw(std::vector<std::vector<int>>& map, int length) {
                // Update player pos
                int rows = map.size();
                int cols = map[0].size();

                // Current x and y pos
                int previousX = position.x;
                int previousY = position.y;

                if (next != nullptr) {
                        next->position = {
                                .x = previousX,
                                .y = previousY
                        };
                }

                // Can probably use % to create snake like mechanic
                // I believe we -2 because the player doesn't start at the first level or last on either X or Y
                // at pos 0 there will be a # to represent the wall
                // at the last pos there will be a # to represent the wall
                if (previousY >= rows - 2) {
                        position.y = previousY % rows;
                } else if (previousX >= cols - (3 + length)) {
                        position.x = previousX % cols;
                }

                // If the preivous position x, y wasn't a wall
                if (map[previousY].at(previousX) != 1) {
                // Set it's previous position as 0 so the next time it's drawn, there'll be a blank spot
                map[previousY].at(previousX) = 0;
                }

                // As long as there is a 0 (for empty space), draw player
                if (map[previousY].at(previousX) == 0) {
                // Y = row; X = column
                map[previousY].at(previousX) = 2;
                }

                if (next != nullptr) {
                        next->Draw(map, length);
                }
        }
};
