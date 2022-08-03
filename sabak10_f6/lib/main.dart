import 'package:flutter/material.dart';

import 'my_app.dart';

// lowercase_with_underscores: бакшы тамга кичине менен жазылып сөздөрдүн 
// ортосунда "_" коюлат да кийинки сөздөр да кичине тамга менен жазылат
// М: my_app, menin_tirkemem. 
// (бул стил көпчүлүк учурда файлдарга ат бергенде колдонулат) 

// lowerCamelCase: Башкы тамга кичине менен башталат да, калдан создөрдүн башкы
// тамгалары чоң менен жазыоып кетет
// М: ozgoruuchuSan, myTitle, meninOzgormom...
// (Бул стил көпчүлүк учурда өзгөрмөлөргө ат берүүдө колдонулат)

// UpperCamelCase: Башкы тамга чоң тамга менен башталат да, Калган сөздөдүн 
// башкы тамгалары чоң менен жазыоып кетет
// М: Counter1Page, Counter2Page, HomePage, LoginService...
// (Бул стил көпчүлүк учурда класстарга ат берүүдө колдонулат)

void main() {
  runApp(const MyApp());
}
