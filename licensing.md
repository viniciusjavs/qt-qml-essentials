### Qt Licensing

#### License Models

- ##### Commercial
	A commercial license keeps your code proprietary where only you can **control** and **monetize** on your **end product development**, **user experience** and **distribution** - **securing your intellectual property**.*

	*NOTE 1: It's not permitted to mix Qt commercial licenses with Qt LGPL licenses in one project.

	*NOTE 2: Licenses are per individual.

- ##### LGPL v3
	With LGPLv3 license option you can use the **essential libraries** and **some add-on libraries** of Qt. LGPL v3 allows for **keeping your application source code closed** as long as all the requirements of LGPL v3 are met

- ##### GPL v3
	With GPLv3 license option, you have access to **almost all Qt framework functionality**, as well as development and design **tooling**.*

- ##### GPL v2
	**All essential libraries** and **some add-on libraries** of Qt are available under GPLv2 license option.*

	*Note that using GPL licensed framework libraries requires your application or device to be under GPL as well.


#### Application Development vs. Device Creation Licenses

- ##### Application development
	+ Dual-licensed (Commercial and Open-source)

	+ Commercial
		* Gives you the full rights to create and distribute software on your own terms without any open source license obligations.
		* Official Qt support.
		* Close **strategic relationship with the Qt Company** to make sure your development goals are met.

	+ GPL / LGPL v3 open source licenses
		* **Qt tools** and **some libraries** are **only** available under **GPL**.
		* Ideal use cases:
			- Open source projects with open source distribution.
			- Student/academic purposes.
			- Hobby projects.
			- Internal research projects without external distribution.
		* All (L)GPL obligations needs to be met.

- ##### Device Creation
	+ With *Qt for Device Creation*, you can create embedded devices with modern UIs with maximum performance.

	+ In addition to **Qt APIs**, it comes with a **full embedded tooling suite** built around **Qt Creator IDE**, and **additional embedded solutions** that help you reduce your time-to-market dramatically.

	+ *Qt for Device Creation* is a product available under a **commercial license**.

	+ This allows you, for example, control your device's user experience, and build proprietary functionality on **top of Qt and to lock** down your device.

#### Open Source Licensing

- Copyleft
	+ The license follows the distributed product.

- Freedom
	+ The freedom to run the program for any purpose.
	+ The freedom to study how the program works and adapt it to specific needs.
	+ The freedom to redistribute copies so you can help you neighbor.
	+ The freedom to improve the program and release your improvements to the public, so that the whole community benefits.

- Obligations
	+ Release the source code.
	+ Release the improvements.
	+ Permit users to use another version of the open source libraries.
		* i.e. allows the library to be pluggable.
		* i.e. dynamically linked.

- ##### LGPL v2.1/v3

	- GNU Lesser General Public License.

	- Allow the main code to remain private.

	- You have to provide means to the end user to install a modified version of the library licensed under LGPLv3 and run your software using that modified library.

	- Rationale
		+ **Tivoization**: not allowing creation of closed devices.
		+ **DRM** and **hardware encryption**: cannot be used to circumvent these obligations.
		+ **Software patent retaliation**: granted licenses.

	- LGPL v2
		+ Less rigorous (not recommended anymore by the Free Software Foundation)
		+ ```WebEngine```
		+ ```Webkit```

	- Proprietary license + LGPL v2.1 + LGPL v3
		+ Can be combined.



#### References

- [https://www.qt.io/product/features](https://www.qt.io/product/features)

- [https://www.qt.io/licensing/](https://www.qt.io/licensing/)