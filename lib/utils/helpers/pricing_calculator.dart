class TPricingCalculator {
  ///-- calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculatorShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given loaction from a tax rate database or API.
    // Return the appropriate tac rate.
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // Lookip the shipping cost for given loaction using  a shipping  rate API.
    // calculate the shipping cost  based on various factors like distance, weight, etc.
    return 5.00; //Eample shippping cost of $5
  }



  /// -- Sum all cart values return total  amount   
  // static double calculateCartTotal(CartModel cart) {
  //return cart.items.map((e) => e.price).fold(0,(previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //}
}
