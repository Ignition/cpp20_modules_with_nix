module;

#include <iostream>

export module demo;

namespace demo
{
  int hidden(){ return 42; }

  export void printMessage()
  {
    std::cout << hidden() << '\n';
  }
}
