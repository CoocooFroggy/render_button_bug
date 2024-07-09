#!/bin/bash

if cd flutter; then
  git pull && cd ..
else
  git clone https://github.com/flutter/flutter.git
fi

ls
flutter/bin/flutter doctor
flutter/bin/flutter clean
flutter/bin/flutter config --enable-web
flutter/bin/flutter build web --web-renderer canvaskit --release --base-href '/render_button_bug/'
