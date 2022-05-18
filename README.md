<!-- # git_friends

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

> # Git Friends

>:warning: This project is a test of a job opportunity, check it out:

    root
    └─ src
    ....├─ AppIcons
    ....└─ Front-end Challenge.pdf      // -> here is the test with your requirements

> ## The Project:

A simple application that provides data from github friends, among them their commits.

* Figma (Prototype):

![figma](https://user-images.githubusercontent.com/59848966/168177632-30c1e49e-068c-4251-9b29-da449c91a3ae.png)

* Result:

![result](https://user-images.githubusercontent.com/59848966/168177896-6f212982-063c-4aca-b1c0-58c6fdce5c14.png)

> ## Features:

* MVC architecture;
* modular;
* bloc for reactivity;
* dio for api request;
* BDD;
* i18n (internacionalization) en_US/pt_BR;
* launch icon;
* launch name;
* easter egg;

> ## Design (in figma):

* https://www.figma.com/file/YpLhaL8uvzPWeaA3P2RL8F/Untitled?node-id=3%3A5;

> ## Arch:

    root
    └─ lib
    ....├─ i18n
    ........├─ en_US.json
    ........└─ pt_BR.json
    ....├─ modules
    ........└─ home
    ............├─ bloc
    ................├─ home_bloc.dart
    ................├─ home_event.dart
    ................└─ home_state.dart
    ............├─ models
    ................└─ users_model.dart
    ............├─ pages
    ................└─ home_page.dart
    ............├─ repositories
    ................└─ home_repository.dart
    ............└─ home_module.dart
    ....├─ shared
    ........├─ core
    ........└─ widgets
    ....├─ app_module.dart
    ....├─ app_widget.dart
    ....└─ main.dart

> ## BDD requirements in:

    root
    └─ requirements
    ....└─ home
    .......├─ home.feature
    .......└─ remote_get_data_use_case.md

> ## Dependencies:

Flutter version: 3.0.0;<br>
Packages:

    dio: ^4.0.6
    easter_egg_trigger: ^1.0.1
    flutter_bloc: ^8.0.1
    flutter_localizations: 
        sdk: flutter
    flutter_modular: ^5.0.2
    localization: ^2.1.0


> ## Framework and Tools:

* figma;
* vs code;
* flutter & dart;
* android emulator;

> ## License:

    MIT License

    Copyright (c) 2022 Matheus Ferreira

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
