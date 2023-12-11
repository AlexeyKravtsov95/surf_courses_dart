class Phone {
  final String brand;
  final String model;
  final String color;
  final int year;
  bool isOn;
  Dimension dimension;

  Phone({
    required this.brand,
    required this.model,
    required this.color,
    this.year = 2023,
    this.isOn = false,
    required this.dimension,
  });

  Phone.my():
    brand = 'iPhone',
    model = '12 Pro',
    color = 'Space grey',
    year = 2021,
    isOn = false,
    dimension = Dimension(
      width: 71.5,
      length: 146.7,
      thickness: 7.4,
      weigth: 187,
    );

  turnOff() {
    if (isOn == true) { 
      isOn = false;
      return isOn;
    }
  }

  turnOn() {
    if (isOn == false) {
      isOn = true;
      return isOn;
    }
  }

  @override
  String toString() {
    return '''
      Brand: $brand,
      Model: $model,
      Color: $color,
      Year: $year,
      isOn: $isOn,
      $dimension
  ''';
  }
}

class Dimension {
  final double width;
  final double length;
  final double thickness;
  final double weigth;

  Dimension ({
    required this.width,
    required this.length,
    required this.thickness,
    required this.weigth,
  });

  @override
  String toString() {
    return '''Dimension and weight: $width, $length, $thickness, $weigth''';
  }
}

void main() {
  Phone myPhone = Phone.my();
  myPhone.turnOn();
  print(myPhone);
}