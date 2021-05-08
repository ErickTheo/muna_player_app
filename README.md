# Muna Player App

Muna Music Player App. Candidate take home test.

## Table of contents

- [Quick start](#quick-start)
- [Supported devices](#supported-devices)
- [Supported features](#supported-features)
- [Build Requirements](#build-requirements)
- [Build Instructions](#build-instructions)
- [Code Guidelines](#code-guidelines)
- [3rd Party Libraries](#3rd-party-libraries)

## Quick start

This is a normal flutter app. You should follow the instructions in the [official documentation](https://flutter.io/docs/get-started/install).

## Supported devices

This app only is only been tested running on Android Emulator: Nexus 6P API 26

## Supported features
* Search artist on iTunes
* Preview song
* Audio controller (play, pause, next, and prev)

## Build Requirements

* IDE: Android Studio 4.1.x
* Flutter: 2.0.x

## Build Instructions

### Android Studio

1. Download and install [Android Studio](https://developer.android.com/studio) (version 4.1.0 or above)
2. Start Android Studio, and go through the ‘Android Studio Setup Wizard’. This installs the latest Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.
3. Set up the Android Emulator, see the manuals based on your OS.
4. Install the Flutter and Dart plugins. ([Instruction](https://flutter.dev/docs/get-started/editor))

### Flutter

1. Download and install [Flutter](https://flutter.dev/docs/get-started/) (version 2.0.0 or above)
2. Make sure you run '$ Flutter doctor', and verify that you’ve set everything up correctly.

### Run the app

1. Open the project
2. In the target selector, select an Android device for running the app. If none are listed as available, select Tools> Android > AVD Manager and create one there. For details, see[ Managing AVDs](https://developer.android.com/studio/run/managing-avds).
3. Click the run icon in the toolbar, or invoke the menu item Run > Run.
4. After the app build completes, you’ll see the starter app on your device.

## Code Guidelines
[Reference](https://rodrigolmti.medium.com/clean-architecture-no-flutter-1888c4baa6bc)

### Clean Code Architecture
The idea behind the clean architecture concept is to make the project scalable, easy to maintain and testable, creating separate layers and always depending on abstractions and not concrete classes.

### Design Principle

[S.O.L.I.D](https://en.wikipedia.org/wiki/SOLID)

* S: Single responsibility
* O: Open closed
* L: Liskov Substitution
* I: Interface segregation
* D: Dependency inversion

## 3rd Party Libraries

## [GetX](https://pub.dev/packages/get) 
* State Manager, Navigation Manager, Dependencies Manager
* Quick explanation: [Medium](https://medium.com/flutter-community/the-flutter-getx-ecosystem-state-management-881c7235511d)
* Tutorial: [Installation](https://pub.dev/packages/get/install)

## [HTTP](https://pub.dev/packages/http)
* A composable, Future-based library for making HTTP requests.

## [Assets Audio Player](https://pub.dev/packages/assets_audio_player)
* Audio player
* Load audio from url
* Audio controller

## [Test](https://pub.dev/packages/test)
* Unit Testing 
