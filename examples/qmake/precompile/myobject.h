#ifndef MYOBJECT_H
#define MYOBJECT_H

//! [0]
#include <QObject>

class MyObject : public QObject {
public:
  MyObject();
  ~MyObject();
};
//! [0]

#endif
