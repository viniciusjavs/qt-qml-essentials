### qmake Manual

#### Creating Project Files (.pro)
Project files contain all the information required by ```qmake``` to build your application, library, or plugin. Generally, you use a **series of declarations** to specify the **resources** in the project, but support for **simple programming constructs** enables you to **describe different build processes** for **different platforms** and **environments**.

##### Variables
|Variable|Contents|
|--|--|
|**CONFIG**|General project configuration options|
|**DESTDIR**|The directory in which the executable or binary file will be placed|
|**FORMS**|A list of UI files to be processed by the user *interface compiler* (**uic**)|
|**HEADERS**|A list of filenames of header (**.h**) files used when building the project|
|**QT**|A list of Qt modules used in the project|
|**RESOURCES**|A list of resource (**.qrc**) files to be included in the final project|
|**SOURCES**|A list of source code files to be used when building the project|
|**TEMPLATE**|The template to use for the project. This determines whether the output of the build process will be an application, a library, or a plugin|

The contents of a variable can be read by prepending the variable name with **```$$```**.

	TEMP_SOURCES = $$SOURCES

Ex.:
- Values are assigned to variables

		HEADERS = mainwindow.h paintwidget.h

- List of values is extendend

		SOURCES = main.cpp mainwindow.cpp \
		          paintwidget.cpp
		CONFIG += console

##### Whitespace
To specify values that contain spaces, you must enclose the values in double quotes.

	DEST = "Program Files"

##### Comments
Comment begin with the **#** character and continue to the end of the same line:

	# Comment usually start at the beginning of a line, but they
	# can also follow other content on the same line

To include the **#** character in variable assignments, it is necessary to use the contents of the built-in ```$$LITERAL_HASH``` variable.

##### Buit-in Functions and Control Flow

- ```include()```

	Takes a filename as an argument. The contents of the given file are included in the project file at the place where the ```include``` function is used.

		include(other.pro)

- *scopes*

	Behaves like *if* statements in programming languages. Provides support for condicional structures.

		win32 {
			SOURCES += paintwidget_win.cpp
		}

- [Replace Functions](https://doc.qt.io/qt-5/qmake-function-reference.html)
	+ [```find()```](https://doc.qt.io/qt-5/qmake-function-reference.html#find-variablename-substr)
	+ [```unique()```](https://doc.qt.io/qt-5/qmake-function-reference.html#unique-variablename)

- [Test Function](https://doc.qt.io/qt-5/qmake-test-function-reference.html)
	+ [```count()```](https://doc.qt.io/qt-5/qmake-test-function-reference.html#count-variablename-number)

##### Project Templates
The ```TEMPLATE``` variable is used to define the type of project that will be built.

- app (default)
- lib
- aux (build nothing)
- subdirs (contain rules for subdirectories specified by ```SUBDIRS```)
- vcapp
- vclib
- vcsubdirs

##### General Configuration

- *release* mode
- *debug* mode
- ```debug_and_release``` (both modes)
	+ ```$ make all```
	+ ```build_all```: turns ```make all``` the default option
		* ```$ make``` = ```$ make all```

Each of the options specified in the ```CONFIG``` variable can also be used as a scope condition:

	CONFIG(opengl) {
		message(Building with OpenGL support.)
	} else {
		message(OpenGL support is not available.)
	}

- qt
- x11

Use the Qt library and build in ```debug``` mode.

	CONFIG += qt debug

- Extra configuration features can be added by using feature (.prf) files.

		CONFIG += link_pkgconfig # from link_pkgconfig.prf
		PKGCONFIG += ogg dbus-1

##### Declaring Qt Libraries
If the ```CONFIG``` variable contains the ```qt``` value, qmake's support for Qt applications is enabled. You can now manage what Qt modules do you want in your application.

	QT += network xml

QT includes the ```core``` and ```gui``` modules by default.

	QT -= gui # Only the core module is used.

##### Declaring Other Libraries
The **paths** containing **header files** can be specified by using the ```INCLUDEPATH``` variable.

	INCLUDEPATH = c:/msdev/include d:/stl/include

The **paths** that ```qmake``` searches for libraries and the **specific libraries** to **link** against can be added to the list of values in the ```LIBS``` variable.

	LIBS += -L/usr/local/lib
	LIBS += -lmath

#### References

[https://doc.qt.io/qt-5/qmake-project-files.html](https://doc.qt.io/qt-5/qmake-project-files.html)