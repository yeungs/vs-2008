Description
===========

Installs and configures Visual Studio 2008 + SP1.

Requirements
============

Platform
--------

* Windows

Tested on:

* Windows

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
