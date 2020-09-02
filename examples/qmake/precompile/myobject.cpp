//! [0]
#include "myobject.h"
#include <QDebug>
#include <QObject>
#include <iostream>

MyObject::MyObject() : QObject() { std::cout << "MyObject::MyObject()\n"; }
//! [0]

MyObject::~MyObject() { qDebug() << "MyObject::~MyObject()"; }
