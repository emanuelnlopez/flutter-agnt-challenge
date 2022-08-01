# flutter-agnt-challenge

Flutter application developed as part of a job interview for AGNT 

## About the project
- The project is developed following the clean architecture.
- It is divided into 3 subprojects for a better separation of concerns.
  - `domain`: Dart project which contains the business logic
  - `data`: Flutter project where all the domain interfaces get implemented. It has `domain` as a dependency.
  - `app`: Is the actual Flutter app. It has `domain` and `data` as dependencies


## Demo

![Short video showing the developed features](https://raw.githubusercontent.com/emanuelnlopez/flutter-agnt-challenge/main/extras/demo.mp4)