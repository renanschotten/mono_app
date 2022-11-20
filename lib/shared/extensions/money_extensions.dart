extension AmountToReaisString on int {
  String reais() {
    String value = (this / 100).toStringAsFixed(2);
    return 'R\$ $value';
  }
}

extension AmountToDollarString on int {
  String dollar() {
    String value = (this / 100).toStringAsFixed(2);
    return '\$ $value';
  }
}
