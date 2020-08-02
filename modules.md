### Qt Modules

#### Qt Essentials

- Foundation of Qt on **all platforms**.
- Available on all supported development platforms and on the tested target platforms.
- Source and binary compatible throughout Qt 5 (major version).
	+ Testing modules: **source compatible only**.
- General and useful for a majority of Qt applications.
- Add-on: a module with a *special purpose*.

##### Qt Essential Modules

|Module| Description|
|--|--|
|**Qt Core**| Core non-graphical classess used by other modules.|
|**Qt GUI**| Base classes for graphical user interface (GUI) components. (Includes OpenGL)|
|**Qt Multimedia**| Classes for audio, video, radio and camera functionality.|
|**Qt Multimedia Widgets**| Widget-based classes for implementing multimedia functionality. (It provides additional multimedia-related widgets and controls. The classes expand the capabilities of the *Qt Multimedia* and *Qt Widgets*)|
|**Qt Network**| Classes to make network programming easier and more portable.|
|**Qt QML**| Classes for QML and JavaScript languages.|
|**Qt Quick**| A declarative framework for building highly dynamic applications with custom interfaces.|
|**Qt Quick Controls**| Provides lightweight QML types for creating performant user interfaces for desktop, embedded and mobile devices. (Simple styling architecture. Very efficient.)
|**Qt Quick Dialogs**| Types for creating and interacting with system dialogs from a Qt Quick application.|
|**Qt Quick Layouts**| Layouts are items that are used to arrange Qt Quick 2 based items in the user interface.|
|**Qt Quick Test**| A unit test framework for QML applications, where the test cases are written as JavaScript functions.|
|**Qt SQL**| Classes for database integration using SQL|
|**Qt Test**| Classes for unit testing Qt applications and libraries.|
|**Qt Widgets**| Classess to extend Qt GUI with C++ widgets.|

##### ```qmake```

Includes by default:

- **Qt Core**
- **Qt Gui**

To link only against *Qt Core*:

- ``` QT -= gui```


#### Qt Add-Ons

- May only be available on some development platforms.
- Brings additional value for specific purposes.
- Many add-on modules are either feature-complete and exist for backwards compatibility or are only applicable to certain platforms.
- Each add-on module specifies its **compatibility promise separately**.

##### Qt Add-Ons Modules

|Module|Dev. Platform|Target Platform|Description|
|--|--|--|--|
|Active Qt| Windows | Windows | Classes for applications which use ActiveX and COM|
|Qt 3D| All | All | Functionality for near-realtime simulation systems with support for 2D and 3D rendering|
|Qt Android Extras| All | Android | Provides platform-specific APIs for Android.|
|Qt Bluetooth| All | Android, iOS, Linux, macOS, UWP| Provides access to Bluetooth hardware|
|Qt Concurrent| All | All | Classes for writing multi-threaded programs without using low-level threading primitives|
|Qt D-Bus| All | All | Classes for inter-process communication over the D-Bus protocol|
|Qt Gamepad| All | Android, iOS, macOS, tvOS (+ tvOS remote), Linux, Windows, and QNX | Enables Qt applications to support the use of gamepad hardware|
|Qt Graphical Effects| All | All | Graphical effects for use with Qt Quick 2|
|Qt Help| All | All | Classes for integrating documentation into applications, similar to Qt Assistant|
|Qt Image Formats| All | All | Plugins for additional image formats: TIFF, MNG, TGA, WBMP|
|Qt Location| All | All | Displays map, navigation, and place content in a QML application|
|Qt Mac Extras| All | macOS | Provides platform-specific APIs for macOS|
|Qt NFC| All | Android and Linux | Provides access to Near-Field communication (NFC) hardware|
|Qt OpenGL (deprecated)| All | All | OpenGL support classes. Deprecated in favor of the ```QOpenGL...``` classes in the Qt GUI module|
|Qt Platform Headers| Windows, Linux, macOS | Windows, Linux, macOS, Android | Provides classes that encapsulate platform-specific information, tied to a given runtime configuration of a platform plugin - QPA|
|Qt Positioning| All | Android, iOS, macOS, Linux, UWP | Provides access to position, satellite and area monitoring classes.|
|Qt Print Support| All | All | Classes to make printing easier and more portable|
|Qt Purchasing| All | Android, iOS, macOS | Enables in-app purchase of products in Qt applications|
|Qt Quick Extras| All | All | Provides a specialized set of controls that can be used to build interfaces in Qt Quick|
|Qt Quick Timeline| All | All | Enables keyframe-based animations and parameterization|
|Qt Quick Widgets| All | All | Provides a C++ widget class for displaying a Qt Quick user interface|
|Qt Remote Objects | All | All | Provides an easy to use mechanism for sharing a ```QObject```'s API (Properties/Signals/Slots)	between processes or devices|
|Qt Script (Deprecated) | All | All | Classes for making Qt applications scriptable. Deprecated in favor of the ```QJS```... classes in the ```Qt QML``` module|
|QtSCXML| All | All | Provides classes and tools for creating state machines from SCXML files and embedding them in applications|
|Qt Script Tools (Deprecated)| All | All | Additional components for applications that use ```Qt Script```|
|Qt Sensors|All|Android, iOS, UWP, Mer and QNX|Provides access to sensor hardware and motion gesture recognition|
|Qt Serial Bus|All|Windows, Linux, *Boot to Qt* targets, QNX|Provides access to serial industrial bus interface. Currently the module supports the CAN bus and Modbus protocols|
|Qt Serial Port|All|Windows, Linux, maxOS, QNX|Provides access to hardware and virtual serial ports|
|Qt Speech|All|All except QNX|Provides support for accessibility features such as text-to-speech|
|Qt SVG|All|All|Classes for displaying the contents of SVG files|
|Qt UI Tools|All|All|Classes for loading ```QWidget``` based forms created in *Qt Designer* dynamically, at runtime|
|Qt WebChannel|All|All|Provides access to ```QObject``` or QML objects from HTML clients for seamless integration of Qt applications with HTML/JavaScript clients|
|Qt WebEngine|All|Windows, Linux, macOS|Classes and functions for embedding web content in applications using the Chromium browser project|
|Qt WebSockets|All|All|Provides WebSocket communication compliant with RFC 6455|
|Qt WebView|All|Platforms with a native web engine|Displays web content in a QML application by using APIs native to the platform, without the need to include a full web browser stack|
|Qt Windows Extras|All|Windows|Provides platform-specific APIs for Windows|
|Qt X11 Extras|All|Linux/X11|Provides platform-specific APIs for X11|
|Qt XML|All|All|C++ implementations of SAX and DOM. Note: ```QXmlStreamReader``` and ```QXmlStreamWriter``` are already part of ```Qt Core```|
Qt Wayland Compositor | Linux | Linux and *Boot to Qt* targets | Provides a framework to develop a Wayland compositor|

##### Commercial Licenses or GNU General Public License v3 Add-Ons Modules

|Module|Dev. Platform|Target Platform|Description|
|--|--|--|--|
|Qt Charts|All|All|UI Components for displaying visually pleasing charts, driven by static or dynamic data models|
|Qt Data Visualization|All|All|UI Components for creating stunning 3D data visualizations|
|Qt Lottie Animation|All|All|A QML API for rendering graphics and animations in JSON format, exported by the Bodymovin plugin for Adobe After Effects|
|Qt Network Authorization|All|All|Provides support for OAuth-based authorization to online services|
|Qt Virtual keyboard|All|Linux and Windows desktop, and *Boot to Qt* targets|A framework for implementing different input methods as well as a QML virtual keyboard. Supports localized keyboard layouts and custom visual themes|
|Qt for WebAssembly|All|Web browsers with WebAssembly support|A platform target - QPA - to compile Qt applications for the web browsers using WebAssembly|
|Qt Quick 3D|All|All|Provides a high-level API for creating 3D content or UIs based on Qt Quick|
|Qt Quick WebGL|All|WebGL-enabled web browsers|Provides a platform plugin that allows streaming Qt Quick user interfaces over the network using WebGL|


#### Qt Value-Add Modules

- Modules and tooling built on top of the Qt libraries to provide additional value.
- Their have their own release schedule, and are available under commercial license.

|Feature|Description|
|--|--|
|**Qt Automotive Suite**|A collection of software components and tools to enable development of In-Vehicle-Infotainment (IVI) systems. Built on top of the *Qt for Device Creation* offering and compliant with the **GENIVI** automotive platform architecture|
|**Qt for Automation**|Libraries and tools for automation related domains, such as KNX, OPC UA, and MQTT|
|**Qt for Device Creating**|Tools for fast, easy, and fully-integrated embedded device application development. Included in most other value-add solutions(e.g. **Qt Automotive Suite**)|
|**Qt for MCUs**|Offers a complete graphics framework and toolkit with everything needed to design, develop, and deploy GUIs on microcontroller units (MCUs). Applications can run either on bare metal or on a real-time operating system|


#### Technology Preview Features

|Feature|Description|
|--|--|
|**Qt PDF** (Technology Preview)|Provides C++ and QML APIs for rendering PDF documents|


#### Qt Tools

|Feature|Description|
|--|--|
|**Qt Designer**|Classes for extending *Qt Designer*|


#### References
[https://doc.qt.io/qt-5/qtmodules.html](https://doc.qt.io/qt-5/qtmodules.html)