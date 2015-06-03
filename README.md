Description
===========

Installs and configures Visual Studio 2008 + SP1. This includes all features of Visual Studio 2008 including the 64-bit C++ compiler. By default the 64-bit C++ compiler is not enabled for installation. I also added a registry to disable the Windows compatibility popup for SQL 2005 since it is not supported on Windows 8.1 2012 R2. 

TODO. I need to add more documentation and comments. Please stay tuned or ask me questions.

Requirements
============

Platform
--------

* Windows

Tested on:

* Windows 2012 R2
* Windows 8.1

Cookbooks
---------

* Windows
* 7-zip

Resources and Providers
=======================

<Any Resources Or Providers Here>

Attributes
==========

* node['vs-2008']['base-iso-location']    = "https://msdn.microsoft.com/subscriptions/json/GetDownloadRequest?brand=MSDN&locale=en-US&fileId=14233&activexDisabled=true&akamaiDL=false"

Usage
=====

* Download Visual Studio 2008 Ultimate (x86) - DVD: http://msdn.microsoft.com/en-us/subscriptions/json/GetDownloadRequest?brand=MSDN&locale=en-us&fileId=41833&activexDisabled=false
* Download Visual Studio 2008 SP1 - DVD: https://msdn.microsoft.com/en-us/subscriptions/securejson/GetDownloadRequest?brand=MSDN&locale=en-us&fileId=45796&activexDisabled=false
* Place the ISOs you downloaded on a network share that is accessible from the computers you wish to install VS 2008 + SP1 on
* Override the default attributes to match your network environment, ideally using a hostname instead of an IP (see attributes section, above)

License and Author
==================

Author:: Yeung Siu (yeung.siu@citrix.com)

Copyright:: 2015 Citrix Systems, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
