#include <iostream>

int calculateDiscount(int price, int discountPercent) {
    const int discount = price * discountPercent / 100;
    const int finalPrice = price - discount;
    return finalPrice;
}

int main() {
    const int itemPrice = 1200;
    const int discountPercent = 15;

    const int finalPrice = calculateDiscount(itemPrice, discountPercent);

    std::cout << "Original price: " << itemPrice << '\n';
    std::cout << "Discount: " << discountPercent << "%\n";
    std::cout << "Final price: " << finalPrice << '\n';

    return 0;
}
