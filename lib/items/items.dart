// ignore_for_file: annotate_overrides

abstract class Item {
  final String imagepath, title, description;

  Item(this.imagepath, this.title, this.description);
}

class Controller extends Item {
  // ignore: overridden_fields
  final String imagepath, title, description;

  Controller(this.imagepath, this.title, this.description)
      : super(imagepath, title, description);
}

final controllers = [
  Controller('assets/images/ps5.png', 'Dual Sense', 'Black Version '),
  Controller('assets/images/ps5.png', 'Dual Sense', 'Blue version'),
];
