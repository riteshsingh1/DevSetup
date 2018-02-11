# DevSetup
### Setup Delopment environment for PHP,Android and Javascript from Scratch.

## Note:
Scripts for ubuntu will work well in **linux mint**, **elementry OS** and **Debian**


## Table of contents

* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [To DO](#todo)




## Features
 

PHP 				| JAVASCRIPT   				| ANDROID
---     			| ---						| ---
PHP  7.1			| Node 9.5					| Android studio 3
Mysql  5.7			| NPM 5.6					| AVD
Apache  2.4			| YARN 1.3.2				| SDK
Node 9.5			| Gulp latest				| Platform tools
NPM  5.6			| bower 1.8					| JAVA 	
YARN 1.3.2			| webpack latest			| Environment variable for java
Sublime Text 3.0 	| sublime text 3.0			| Google Chrome
google chrome 64.0	| google chrome 64.0		| Sqlite 3.0	
Sqite 3.0			| Sqlite 3.0				|
Composer 1.6		| 							|



## Prerequisites

Please make sure you have git installed. If not then

### linux or ubuntu
open terminal and run-

```bash
sudo apt-get install update && sudo apt-get install git
```

### windows

Download [Git For Windows](https://git-scm.com/download/win)

## Installation

* [PHP Development System](#php-development-setup)
* [Javascript Developement System](#javascript)
* [Android Development System](#android)


## PHP Development Setup

**Ubuntu and Linux**

Open the terminal and run

```bash
git clone https://github.com/riteshsingh1/DevSetup.git && cd DevSetup && sh ./ubuntu-php.sh
```

**Windows**

Open command prompt with administrator then navigate to this directory then run-

```bash
windows-php
```

this will install all packages essential for PHP development. 
The default mysql root password is root.

## Javascript

**Ubuntu and Linux**

Open the terminal and run

```bash
git clone https://github.com/riteshsingh1/DevSetup.git && cd DevSetup && sh ./ubuntu-js.sh
```

**Windows**

Open command prompt with administrator then navigate to this directory then run-

```bash
windows-js
```

this will install all packages essential for Javascript development


## Android

**Ubuntu and Linux**

Open the terminal and run

```bash
git clone https://github.com/riteshsingh1/DevSetup.git && cd DevSetup && sh ./ubuntu-android.sh
```

**Windows**

Open command prompt with administrator then navigate to this directory then run-

```bash
windows-android
```

this will download and install all, JAVA and set home variable and required component like latest android SDK, Android platform tools, etc. It will also create a desktop icon.

## TODO
 - Add Support for Fedora and RHEL

## Contributing
Pull Requests are welcome.
