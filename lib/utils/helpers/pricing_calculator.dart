class TPricingCalculator {
  /// -- Calculates the price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingcost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingcost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    if (location == 'London') {
      return 0.1;
    } else {
      return 0.05;
    }
  }

  static double getShippingcost(String location) {
    if (location == 'London') {
      return 10.0;
    } else {
      return 5.0;
    }
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  // return cart.items.map((e) => e.price).fold(0, (previousPrice, CurrentPrice)  => previousPrice + (CurrentPrice ?? 0));
  // }
}
