import 'package:flutter_wiggles/model/dog.dart';
import 'package:flutter_wiggles/model/owner.dart';

class FakeDogDatabase {
  static const Owner _owner = Owner(
    name: 'Usuario',
    bio: 'Pet Lover',
    image: 'assets/images/sample_profile.png',
  );

  static const List<Dog> dogsData = [
    Dog(
      name: 'Hachiko',
      age: 3.5,
      gender: 'Masculino',
      color: 'Marrón',
      weight: 12.9,
      location: 'distancia 389m',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/orange_dog.png',
      elapsedTime: 12,
      owner: _owner,
    ),
    Dog(
      name: 'Scooby Doo',
      age: 3,
      gender: 'Masculino',
      color: 'oro',
      weight: 12.4,
      location: 'distancia 23m',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/blue_dog.png',
      elapsedTime: 23,
      owner: _owner,
    ),
    Dog(
      name: 'Agnes',
      age: 2.5,
      gender: 'Femenino',
      color: 'Blanco',
      weight: 6.7,
      location: 'distancia 87',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/red_dog.png',
      elapsedTime: 46,
      owner: _owner,
    ),
    Dog(
      name: 'Bolt',
      age: 2,
      gender: 'Masculino',
      color: 'Negro',
      weight: 8.2,
      location: 'distancia 1.2km',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/yellow_dog.png',
      elapsedTime: 50,
      owner: _owner,
    ),
    Dog(
      name: 'Shelby',
      age: 1,
      gender: 'Femenino',
      color: 'negro',
      weight: 6.9,
      location: 'distancia 1.2km',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/white_dog.png',
      elapsedTime: 59,
      owner: _owner,
    ),
  ];
}
