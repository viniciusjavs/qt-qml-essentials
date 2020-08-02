### Qt - Supported Platforms

Qt is a **commercial** and **open source** licensed **cross-platform** **application** and **UI** *framework*.

- Commercial license
- Open-source license
- Cross-platform
- Application framework
- UI framework


#### Qt Platform Abstraction (QPA) - Qt5

- Makes it easy to port Qt into a new operating system.
- QPA plugins: Subclasses various ```QPlatform...``` classes.
	+ Window
		* ```QPlatformIntegration```
		* ```QPlatformWindow```
	+ Theming
		* ```QPlatformTheme```


#### 32, 64 bit

It supports GCC, vendor-supplied compiler, or a third party compiler.


#### Qt Quick 2

It requires hardware acceleration.

- OpenGL (ES) 2.0
- DirectX 9/11 (with ANGLE)
- Can use an alternative renderer (Qt Quick 2D Renderer)


#### Reference Configurations

- Continuous integration (CI)
- Testing

##### Desktop

- Linux/X11
	+ Ubuntu 18.04 - GCC 7.x or later
- MacOS
	+ Xcode 11
- Windows
	+ MSVC 2019
	+ MinGW 7.3

##### Mobile

- Android
	+ 5.0+
	+ API 21+
	+ Clang 9.0.8 (Google)
	+ NDK r21
- iOS/tvOS/watchOS
	+ Xcode 11
- Universal Windows Platform (UWP)
	+ MSVC 2017
- Qt for WebAssembly
	+ Any browser that supports WebAssembly (e.g. Chrome, Firefox, Android Browser...)
	+ WebGL is required.

##### Embedded

- Embedded Linux
- INTEGRITY
- QNX
- VxWorks


#### References

[https://doc.qt.io/qt-5/supported-platforms.html](https://doc.qt.io/qt-5/supported-platforms.html)
