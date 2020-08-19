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


#### qmake Language
Besides the basic functionality of decribing `names` and `values`, `qmake` also employs advanced features such as functions, scopes and other operators. That allow the generation of Makefiles for multiple platforms.

##### Operators
- Assign Values

		TARGET = myapp

- Append Values

		DEFINES += USE_MY_STUFF

- Remove Values

		DEFINES -= USE_MY_STUFF

- Add **Unique** Values

		DEFINES *= USE_MY_STUFF

- Replace Values

		DEFINES ~= s/QT_[DT].+/QT

	Any values in the list that start with `QT_D` or `QT_T` are replaced with `QT`.

	It replaces any values that **match** a **regular expression** with the specified value.

- Variable Expansion

		EVERYTHING = 	$$SOURCES $$HEADERS
		message("The project contains the following files:")
		message($$EVERYTHING)

	To obtain the contents of an **environment variable**, use the **`$$(...)`** operator:

		DESTDIR = $$(PWD)
		message(The project will be installed in $$DESTDIR)

	To obtain the contents of an **environment variable** at the time that the **`Makefile`** is **processed**, use the **`$(...)`** operator.

		DESTDIR = $$(PWD)
		message(The project will be installed in $$DESTDIR)

		DESTDIR = $(PWD)
		message(The project will be installed in the value of PWD)
		message(when the Makefile is processed.)

	This makes the build process more flexible as long as the environment variable is set correctly when the **`Makefile` is processed**.

- Access `qmake` Properties

	The special `$$[...]` operator can be used to access `qmake` properties.

		message(Qt version: $$[QT_VERSION])
		message(Qt is installed in $$[QT_INSTALL_PREFIX])
		message(Qt resources can be found in the following locations:)
		message(Documentation: $$[QT_INSTALL_DOCS])
		message(Header files: $$[QT_INSTALL_HEADERS])
		message(Libraries: $$[QT_INSTALL_LIBS])
		message(Binary files (executables): $$[QT_INSTALL_BINS])
		message(Plugins: $$[QT_INSTALL_PLUGINS])
		message(Data files: $$[QT_INSTALL_DATA])
			message(Translation files: $$[QT_INSTALL_TRANSLATIONS])
		message(Settings: $$[QT_INSTALL_CONFIGURATION])
		message(Examples: $$[QT_INSTALL_EXAMPLES])

##### Scopes
If a certain condition is `true`, the declarations inside the scope are processed.

- Syntax

		<condition> {
			<command or definition>
			...
		}

- Conditions

		win32 {
			SOURCES += paintwidget_win.cpp
		}

		# negated condition
		!win32 {
			SOURCES -= paintwidget_win.cpp
		}

		# nested conditions
		macx {
			CONFIG(debug, degub|release) {
				HEADERS += debugging.h
			}
		}

		# can be rewritten as
		macx:CONFIG(debug, debug|release) {
			HEADERS += debugging.h
		}

		# single line condition
		win32:DEFINES += USE_MY_STUFF

	The `:` operator behaves like a logical `AND` operator, joining together a number of conditions, and requiring all of them to be true.

	There is also the `|` operator that acts like a logical `OR` operator, joining together a number os conditions, and requiring only one of them to be true.

		win32|macx {
			HEADERS += debugging.h
		}

	The `if` function can be used do **mix**	 both operators:

		if(win32|macos):CONFIG(debug, debug|release) {
			# Do something on Windows and macOS,
			# but only for the debug configuration
		}
		win32|if(macos:CONFIG(debug, debug|release)){
			# Do something on Windows (regardless of debug or release)
			# and on macOS (only for debug)
		}

	The condition accepts the wildcard character to match a family of `CONFIG` values or `mkspec` names.

		win32-* {
			# Matches every mkspec starting with "win32-"
			SOURCES += win32_specific.cpp
		}

	A `else` scope can be processed if the conditions for the preceding scopes are false.

		win32:xml {
			message(Building for Windows)
			SOURCES += xmlhandler_win.cpp
		} else:xml {
			SOURCES += xmlhandler.cpp
		} else {
			message("Unknown configuration")
		}

- Configurations

	Each of the possible values of the `CONFIG` variable can be used as the **condition for a scope**.

		CONFIG += opengl

		opengl {
			TARGET = application-gl
		} else {
			TARGET = application
		}

	Note: It is possible to use your own values on the `CONFIG` line.

- Platform Scope Values

	+ **win32**
	+ **macx**
	+ **unix**
	+ various other based on platform specifications provided in Qt's `mkspecs` directory.

	```
	message($$QMAKESPEC)

	linux-g++ {
		message(Linux)
	}
	```

##### Variables

- DEFINES
- SOURCES
- HEADERS

```
MY_VARIABLE = value

MY_DEFINES = $$DEFINES

# append without separating with a space

TARGET = myproject_$${TEMPLATE}
```

##### Replaces Functions

	HEADERS = model.h
	# same result as
	# HEADERS *= $$OTHER_HEADERS
	HEADERS += $$OTHER_HEADERS
	HEADERS = $$unique(HEADERS)

You can define your own functions for processing the contents of variables as follows:

	defineReplace(functionName) {
		# function code
	}

The following example takes a variable name as its only argument, extracts a list of values from it with `eval()`, and return a list of files.

	defineReplace(headerAndSource) {
		variable = $$1
		names = $$eval($$variable)
		headers =
		sources =

		for (name, names){
			header = $${name}.h
			exists($$header) {
				headers += $$header
			}
			source = $${name}.cpp
			exists($$souce) {
				sources += $$source
			}
		}
		return($$headers $$sources)
	}

##### Test Functions

These functions do not return a value, but instead indicate *success* or *failure*

	count(options, 2) {
		message(Both release and debug specified.)
	}

The following funtion tests whether each file in a list exists and returns *true* if they all exist, or *false* otherwise:

	defineTest(allFiles) {
		files = $$ARGS

		for(file, files) {
			!exists($$file) {
				return(false)
			}
		}
		return(true)
	}

#### References

[https://doc.qt.io/qt-5/qmake-project-files.html](https://doc.qt.io/qt-5/qmake-project-files.html)