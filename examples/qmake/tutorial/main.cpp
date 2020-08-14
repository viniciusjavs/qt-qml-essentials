#include "hello.h"
#include <QApplication>

int main(int argc, char *argv[]) {
  QApplication app(argc, argv);

  MyPushButton helloButton("Hello world!");
  helloButton.resize(100, 30);

  helloButton.show();

  return app.exec();
}
