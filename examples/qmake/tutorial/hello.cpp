#include "hello.h"
#include <QDebug>

MyPushButton::MyPushButton(const QString &text) : QPushButton(text) {
  setObjectName("mypushbutton");
  qDebug() << "My PushButton has been constructed";
}
