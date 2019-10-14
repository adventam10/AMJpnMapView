# AMJpnMap

![Pod Platform](https://img.shields.io/cocoapods/p/AMJpnMap.svg?style=flat)
![Pod License](https://img.shields.io/cocoapods/l/AMJpnMap.svg?style=flat)
[![Pod Version](https://img.shields.io/cocoapods/v/AMJpnMap.svg?style=flat)](http://cocoapods.org/pods/AMJpnMap)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

It can display a simple map of Japan.

## Demo

### AMJpnMapView

| Fig.1 | Fig.2 |
|---|---|
|![map1](https://user-images.githubusercontent.com/34936885/34912790-f0008ab6-f92c-11e7-8c4f-95e0842d1225.gif)|![map2](https://user-images.githubusercontent.com/34936885/34912799-238d8168-f92d-11e7-83ad-0a3004eab8bf.gif)|

### AMJpnMapDetailView

<img width="372" alt="map" src="https://user-images.githubusercontent.com/34936885/34912802-32b90aa4-f92d-11e7-9151-fabee4ce924d.png">

<img width="372" alt="map_detail" src="https://user-images.githubusercontent.com/34936885/35184554-875e5c64-fe3a-11e7-8bde-b94aca259317.png">

## Usage

### AMJpnMapView

```swift
let jpnMapView = AMJpnMapView(frame: view.bounds)
jpnMapView.delegate = self

// customize here

view.addSubview(jpnMapView)
```

Conform to the protocol in the class implementation.

```swift
func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMRegion) { 
    // use selected region here
  
    // example 1 (like Fig.1)
    jpnMapView.setStrokeColor(color: .black, region: region)
    jpnMapView.setScale(scale: 3.0, region: region)
    
    // example 2 (like Fig.2)
    jpnMapView.setFillColor(color: .red, region: region)
    jpnMapView.setStrokeColor(color: .red, region: region)
}

func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMRegion) {
    // use deselected region here
    
    // example 1 (like Fig.1)
    jpnMapView.setStrokeColor(color: .green, region: region)
    jpnMapView.setScale(scale: 1.0, region: region)
    
    // example 2 (like Fig.2)
    jpnMapView.setFillColor(color: .green, region: region)
    jpnMapView.setStrokeColor(color: .green, region: region)
}
```

#### Customization
`AMJpnMapView` can be customized via the following properties.

```swift
@IBInspectable public var strokeColor: UIColor = .green
@IBInspectable public var fillColor: UIColor = .green
@IBInspectable public var strokeColorOkinawaLine: UIColor = .black
```

### AMJpnMapDetailView

```swift
let jpnMapView = AMJpnMapDetailView(frame: view.bounds)

// customize here

view.addSubview(jpnMapView)
```

#### Customization
`AMJpnMapDetailView` can be customized via the following properties.

```swift
@IBInspectable public var strokeColor: UIColor = .green
@IBInspectable public var fillColor: UIColor = .green
@IBInspectable public var strokeColorOkinawaLine: UIColor = .black
```

Set colors.

```swift
public func setStrokeColor(color: UIColor, prefecture: AMPrefecture)
public func setFillColor(color: UIColor, prefecture: AMPrefecture)
```

## Installation

### CocoaPods

Add this to your Podfile.

```ogdl
pod 'AMJpnMap'
```

### Carthage

Add this to your Cartfile.

```ogdl
github "adventam10/AMJpnMapView"
```

## License

MIT
