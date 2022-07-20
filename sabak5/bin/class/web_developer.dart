import 'developer.dart';

// WebDeveloper child class (bala class),
// Developer parent class (ata class),
// extends muras aluu (genetikalyk muras)

class WebDeveloper extends Developer {
  WebDeveloper({
    required super.name,
    required super.jash,
    required super.framework,
  });

  @override
  void kodJaz() {
    print('''<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>''');
  }
}
