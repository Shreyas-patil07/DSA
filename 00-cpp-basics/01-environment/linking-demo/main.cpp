#include <iostream>
#include <string>

#include "greeter.hpp"

int main() {
    const std::string name = "DSA learner";
    std::cout << makeGreeting(name) << '\n';
    return 0;
}
