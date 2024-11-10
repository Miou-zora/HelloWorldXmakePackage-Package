# Hello World Xmake Package - Package

## Project Context

This project is an hello world to create a xmake package. It contains 3 repositories:
- [Library](https://github.com/Miou-zora/HelloWorldXmakePackage-Lib): This repository contains the library to be packaged. It is a xmake static library project which contains a foo function.
- [Package](https://github.com/Miou-zora/HelloWorldXmakePackage-Package): This repository act as a packager. It allows to use the library as a package for other projects.
- [Consummer](https://github.com/Miou-zora/HelloWorldXmakePackage-Consummer): This repository is a consummer of the package. It uses the packager to pull library project and use it. 
