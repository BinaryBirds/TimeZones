# TimeZones (🕐)

Strong typed, autocompleted time zones with locations for Swift.



## Usage

Some examples:

```swift
import TimeZones

let gmt = TimeZone(abbrevation: .gmt)

let budapest = TimeZone.Europe.Budapest
budapest.identifier //"Europe/Budapest"
budapest.latitude // 47.497_912
budapest.longitude // 19.040_235
budapest.timeZone // TimeZone object
```



## Install

Just use the [Swift Package Manager](https://theswiftdev.com/2017/11/09/swift-package-manager-tutorial/) as usual:

```swift
.package(url: "https://github.com/binarybirds/timezones", from: "1.0.0"),
```

⚠️ Don't forget to add "TimeZones" to your target as a dependency!



## License

[WTFPL](LICENSE) - Do what the fuck you want to.
