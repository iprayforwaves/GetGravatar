GetGravatar
===========

GetGravatar is a simple Objective-C class for generating a gravatar from an email address.

## Usage
* Add the files to your project using [Cocoapods](http://cocoapods.org) (`pod 'GetGravatar', '~> 1.1'`)
* Import `GetGravatar.h` into your class.
* Pass an email and size to the `gravatarURLForEmail` method to get the corresponding Gravatar URL: `[NSURL URLWithGravatarEmail: @"test@test.com" size:200]`.


## License
GetGravatar is freely distributed under the MIT license.
