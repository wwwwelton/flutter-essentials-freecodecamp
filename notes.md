# Flutter Essentials - freeCodeCamp (Full Course)

### Todo List
- [ ] - Task 01

### Useful links
| Name | Link |
| - | - |
| Github  | https://github.com/wwwwelton/flutter-essentials-freecodecamp |
| Course  | https://www.youtube.com/watch?v=P2IGQT3BZQo |
| Course Post | https://www.freecodecamp.org/news/flutter-app-course-mobile-web-desktop/ |
| Flutter documentation | https://docs.flutter.dev/ |
| Install Chrome WSL2 | https://scottspence.com/posts/use-chrome-in-ubuntu-wsl |
| Do you need to use the "new" keyword in Dart? | https://stackoverflow.com/questions/50091389/do-you-need-to-use-the-new-keyword-in-dart |

### Temp block
```code

```

### Docs
install any package from https://pub.dev/packages
```bash
# This will add a line like this to your package's pubspec.yaml
# (and run an implicit dart pub get)
flutter pub add http
```
Import it
Now in your Dart code, you can use:
```dart
import 'package:http/http.dart';
```

#### Instalation
##### Chrome
```bash
# Dependencies, make sure you’re up to date first:
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove

# Download and install Chrome:
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb

# Check that it’s installed ok:
google-chrome --version

# to run google-chrome
google-chrome
```

#### Create Project
```bash
flutter create awesome_app

# In order to run your application, type:
cd awesome_app && flutter run
flutter run --hot -d web-server --web-port 8080
```

#### Container & Text Widgets
```bash

```
