import 'package:intl/intl.dart';

class PriceUtils {
  static String cleanStringPrice(String preco) => preco
      .replaceAll('R\$', '')
      .replaceAll('.', '')
      .replaceAll(',', '.')
      .trim();

  static double getNumberStringPrice(String price) => double.parse(price
      .replaceAll('R\$', '')
      .replaceAll(',', '')
      .replaceAll('.', ',')
      .trim());

  static String cleanStringDiscount(String desconto) => desconto
      .replaceAll('%', '')
      .replaceAll('.', '')
      .replaceAll(',', '.')
      .trim();

  static String numberToPrice(String preco) =>
    NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2)
     .format(double.parse(preco));

}
