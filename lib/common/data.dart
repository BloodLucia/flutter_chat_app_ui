import 'package:chateo_app/models/stories_mo.dart';
import 'package:faker/faker.dart';

class AppData {
  const AppData._();

  static List<StoriesMo> stories = [
    StoriesMo(
      faker.person.lastName(),
      faker.image
          .image(width: 100, height: 100, random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
    StoriesMo(
      faker.person.lastName(),
      faker.image.image(random: true, keywords: ['people']),
    ),
  ];
}
