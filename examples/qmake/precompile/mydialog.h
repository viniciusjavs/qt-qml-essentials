#ifndef MYDIALOG_H
#define MYDIALOG_H

#include "ui_mydialog.h"

class MyDialog : public QDialog, public Ui::MyDialog {
  Q_OBJECT

public:
  MyDialog(QWidget *parent = nullptr);
};

#endif
