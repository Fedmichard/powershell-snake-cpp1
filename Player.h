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
        Tail* next = nullptr;

        Tail(Position pos) {
                position = pos;
        }

        void Draw(std::vector<std::vector<int>>& map, int x, int y);
};
