# iOS Core
![MIT](https://img.shields.io/github/license/:user/:repo.svg) ![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)


## Installation with Carthage

[Carthage](https://github.com/Carthage/Carthage) is another dependency management tool written in Swift.

Add the following line to your Cartfile:

```
github "exozet/iOSCore" ~> 0.0.1
```

And run `carthage update` to build the dynamic framework.

- Under embeded binaries add manually iOSCore.framework and then import as normal pod, like:

```
import iOSCore
```


## Support

Supports iOS 10 and above. Xcode 10.0 is required to build the latest code written in Swift 4.0.
