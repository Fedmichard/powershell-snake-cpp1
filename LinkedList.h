#include "Player.h"

class LinkedList {
private:
  Player* _head = nullptr;

public:
  LinkedList(Player* head) {
    _head = head;
  }

  void AddBody(int x, int y) {
    Position newPos {
      .x = x,
      .y = y
    };

    Tail* newTail = new Tail(newPos);
  }
};
