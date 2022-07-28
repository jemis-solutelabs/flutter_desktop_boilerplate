
# Flutter desktop setup guide

We can create Professional desktop app using flutter 3.0 .With flutter versin 3.0 Desktop app support come out of the box for follwing platform macOS, Windows and Linux.


## How to create deskop app in flutter 

[Documentation](https://flutter.dev/multi-platform/desktop)

## Create Project

Use flutter command line to create new project.

```bash
flutter create app_name
```

## Enable Desktop in existing project

Use flutter command line to enable desktop support in existing project.

Enable Desktop Support:
```bash
flutter config --enable-linux-desktop
```
```bash
flutter config --enable-macos-desktop
```
```bash
flutter config --enable-windows-desktop
```


## Build Desktop in existing project

Use flutter command line to create new project.

Enable Desktop Support:
```bash
flutter build linux
```
```bash
flutter build macos
```
```bash
flutter build windows
```


After building application you can see application for the specific platform inside the build folder of the project


## How to change Icon of the app

To change icon of application we have to add [icons_launcher](https://pub.dev/packages/icons_launcher) package from [pub.dev](pub.dev) as Dev dependency.


Create flutter_icons_config.yaml file in root of the project with following as content.
```bash
flutter_icons:
  image_path: "assets/images/logo.png"
  android: true # can specify file name here e.g. "ic_launcher"
  ios: true # can specify file name here e.g. "My-Launcher-Icon"
  web: true
  image_path_web:  "assets/images/logo.png"
  background_color_web: "#hexcolor"
  theme_color_web: "#hexcolor"
  # if we add support for linux
  linux: true
  image_path_linux:  "assets/images/logo.png"
  #if we add support for windows
  windows: true
  image_path_windows:  "assets/images/logo.png"
  # ... and so on with other platforms

  macos: true

  image_path_macos:  "assets/images/logo.png"

```

Write following comand in terminal and it will change the icon of the application for all six platforms.

```code
flutter pub run icons_launcher:main -f flutter_icons_config.yaml
```
## How To create distrubution file

To create detributiion file for application you can use [flutter_destributer](https://pub.dev/packages/flutter_distributor) package to create distrubution file.
