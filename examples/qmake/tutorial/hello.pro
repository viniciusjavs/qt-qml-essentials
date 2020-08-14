CONFIG += debug				# Make the application debuggable

HEADERS += hello.h
SOURCES += hello.cpp
SOURCES += main.cpp

QT += widgets				# QT = core gui widgets

# SOURCES = hello.cpp \
#           main.cpp

# TARGET = helloworld			# Use a different target name

# Use scopes to determine which files will be processed depending on
# the platform
win32 {
    SOURCES += hellowin.cpp
}
unix {
    SOURCES += hellounix.cpp
}

!exists( main.cpp ) {			# Check wether a file exists or not
    error( "No main.cpp file found" )	# Stop qmake
}

# Joint scopes
# win32 {
#     debug {
#         CONFIG += console
#     }
# }

win32:debug {
    CONFIG += console
}
