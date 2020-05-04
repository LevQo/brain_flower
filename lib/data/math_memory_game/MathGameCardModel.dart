class MathGameCardModel {
  final String number;
  final bool isNeedToRemember;
  final bool isMemorizedNumber;

  MathGameCardModel(
      {this.number, this.isNeedToRemember = false, this.isMemorizedNumber = false});
}
