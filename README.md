# Simple Project demonstrating DEB, RPM, and Flatpak packaging

This simple 'hello world' project demonstrates how to publish
your project into some of the most common linux packages.

The bash scripts (deb.sh, flatpak.sh, etc) performs all the steps
needed to make each package, but then reverts the project folder
back to it's original state. This is because each package system
expects a different project layout, and all of them inside one 
project seems to get really confusing.

### Dependencies:

For building `.DEB` files, you'll need the following installed on your
debian-based system (which you'll very likely already have):

```
sudo apt install dpkg
```

For building `.flatpak` files, you'll need the following installed on 
your debian-based system:

```
sudo apt install flatpak 

sudo flatpak install flathub org.freedesktop.Platform//19.08 org.freedesktop.Sdk//19.08
```

For building `.rpm` files, you'll need the following installed on your
debian-based system:

```
sudo apt install rpm
```

For building `.exe` files, you'll need the following installed on your
debian-based system:

```
sudo apt install mingw-w64
```