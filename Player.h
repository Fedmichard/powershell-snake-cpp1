#pragma once

#include <vector>
#include <iostream>
#include <conio.h>

struct Position {
        int x;
        int y;
};

struct Tail;

class Player {
private:
        std::vector<Tail*> body;

        Position pos { .x = 0, .y = 0 };
        Position prevPos { .x = 0, .y = 0 };

        int update { 2 };
public:
        Player();

        void Draw(std::vector<std::vector<int>>& map);
        void addTail(Position);
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
