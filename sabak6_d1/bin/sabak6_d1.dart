import 'package:sabak6_d1/sabak6_d1.dart' as sabak6_d1;

void main(List<String> arguments) {
  var result = ayt();
  result++; // (result++;) === (result = result+1;)
  print(result);
}

int ayt() {
  var a = 1;
  var b = 3;
  var c = a + b;
  return c;
}

// class Text {
//   String data;
//   Key? key;
//   TextStyle? style;
//   StrutStyle? strutStyle;
//   TextAlign? textAlign;
//   TextDirection? textDirection;
//   Locale? locale;
//   bool? softWrap;
//   TextOverflow? overflow;
//   double? textScaleFactor;
//   int? maxLines;
//   String? semanticsLabel;
//   Text({
//     required this.data,
//     this.key,
//     this.strutStyle,
//     this.locale,
//     this.softWrap,
//     this.textScaleFactor,
//     this.maxLines,
//     this.semanticsLabel,
//   });
// }

// class Key {
//   String key;
//   Key({
//     required this.key,
//   });
// }
