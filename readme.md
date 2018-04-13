# DevSetup
### Setup Delopment and Production environment for PHP & It's Frameworks

## Note:
Scripts for ubuntu will work well in **linux mint**, **elementry OS** and **Debian**


## Table of contents

* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [To DO](#todo)




## Features
 

PHP 
---
PHP 7.1
NPM
YARN
REDIS
BEANSTALKD
MYSQL



## Prerequisites

Please make sure you have git installed. If not then

### linux or ubuntu
open terminal and run-

```bash
sudo apt-get update && sudo apt-get install git
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
#### The default mysql root password is root.

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

this will download and install everything including JAVA and required component like latest android SDK, Android platform tools, etc. It will also create a desktop icon.

## TODO
 - Add Support for Fedora and RHEL
 - Add Support for GO and Python

## Contributing
Pull Requests are welcome.
