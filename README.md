# flutter-agnt-challenge

Flutter application developed as part of a job interview for AGNT

## Assignment details

- The purpose of this task is to create a Stripe.com customer and assign them a credit card.
- The attached ui mock up is only an example. You can use any widget style he likes. What is important, is how state management is implemented and how the layers are separated and structured.

<img src="extras/example_screen.png" widt="200"/>

## About the project
- The project is developed following the clean architecture.
- It is divided into 3 subprojects for a better separation of concerns.
  - `domain`: Dart project which contains the business logic
  - `data`: Flutter project where all the domain interfaces get implemented. It has `domain` as a dependency.
  - `app`: Is the actual Flutter app. It has `domain` and `data` as dependencies


## Demo

![Short video showing the developed features](https://raw.githubusercontent.com/emanuelnlopez/flutter-agnt-challenge/main/extras/demo.mp4)