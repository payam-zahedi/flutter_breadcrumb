# flutter_breadcrumb
[![pub package](https://img.shields.io/pub/v/flutter_breadcrumb?color=blue&style=plastic)](https://pub.dartlang.org/packages/flutter_breadcrumb)
[![Twitter](https://img.shields.io/twitter/url?color=blue&style=plastic&url=https://twitter.com/payamzahedi95)](https://twitter.com/payamzahedi95)

Flutter `Widget` that can easily create `Breadcrumb` in Flutter.

> A breadcrumb or breadcrumb trail is a graphical control element frequently used as a navigational aid in user interfaces and on web pages. It allows users to keep track and maintain awareness of their locations within applications, documents, or websites.

![Flutter Breadcrumb](https://raw.githubusercontent.com/payam-zahedi/flutter_breadcrumb/master/files/image/header.jpg "Flutter Breadcrumb")
## Show Cases


|Show Case   | Wrap Behavior  | Scroll Behavior  |
| ------------ | ------------ | ------------ |
| ![showcase](https://github.com/payam-zahedi/flutter_breadcrumb/blob/master/files/gif/showcase.gif?raw=true "showcase")  |  ![wrap behaivor](https://github.com/payam-zahedi/flutter_breadcrumb/blob/master/files/gif/wrap.gif?raw=true "wrap behaivor") | ![scroll behavior](https://github.com/payam-zahedi/flutter_breadcrumb/blob/master/files/gif/scroll.gif?raw=true "scroll behavior")  |

## Getting Start

#### 1. Add it to Your `pubspec.yaml` file as dependency:

```dart
dependencies:
  flutter_breadcrumb: ^1.0.1
```

#### 2. Install packages from the command line

```dart
flutter pub get
```

#### 3. Import it to your file
```dart
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
```

#### 4. Add BreadCrumb widget to your widget tree
```dart
BreadCrumb(
	items: <BreadCrumbItem>[
	//add your BreadCrumbItem here
	],
	divider: Icon(Icons.chevron_right),
)
```

------------

## Create Items

#### for creating items you can use `primary constructor` or `builder named constructor`.

#### 1. Primary constructor:
```dart
BreadCrumb(
	items: <BreadCrumbItem>[
		 BreadCrumbItem(content: Text('Item1')),
		 BreadCrumbItem(content: Text('Item2')),
								 ...
	],
	divider: Icon(Icons.chevron_right),
)
```
#### 2. Builder named constructor:
```dart
BreadCrumb.builder(
	itemCount: 8,
	builder: (index) {
		return BreadCrumbItem(content: Text('Item$index'));
	},
	divider: Icon(Icons.chevron_right),
)
```
------------
## Care about Overflow

#### select a right overflow behavior for your `BreadCrumb` widget.

##### 1. WrapOverflow behavior: you can use this behavior when you want to your widget, wrap whenever it uses all of the main Side sizes:

```dart
BreadCrumb(
	items: <BreadCrumbItem>[
		//add your BreadCrumbItem here
	],
	divider: Icon(Icons.chevron_right),
	overflow: WrapOverflow(
		keepLastDivider: false,
		direction: Axis.horizontal,
	),
)
```

##### 2. ScrollableOverflow behavior: use it whenever you want to content your widget scroll if it needed.
```dart
BreadCrumb(
	items: <BreadCrumbItem>[
		//add your BreadCrumbItem here
	],
	divider: Icon(Icons.chevron_right),
	overflow: ScrollableOverflow(
		keepLastDivider: false,
		reverse: false,
		direction: Axis.horizontal,
	),
)
```
##### 3. Custom Overflow behavior: you can easily create your own overflow behavior. the only thing you need is to create a class and extends it from the BreadCrumbOverflow class and overwrite its dependencies.
```dart

class CustomOverflowBehavior extends BreadCrumbOverflow{
	@override
	Widget build(BuildContext context, List<BreadCrumbItem> items, Widget divider) {
		// TODO: implement build
	}

	@override
	// TODO: implement keepLastDivider
	bool get keepLastDivider => _keepLastDivider;

	@override
	List<Widget> widgetItems(List<BreadCrumbItem> items, Widget divider) {
		// TODO: implement widgetItems
	}
}
```

##### * override `widgetItems` method to create `List<Widget>` with `items` and `divider` parameters.
##### * override `build` method to create your own widget behavior. for example wrap behavior uses `Wrap` widget. and you can use `widgetItems` method in your build method to create `List<Widget>` items.
------------
## Contribution and Support
#### Feel free for Contributing. your Pull Requests are welcome.
#### if your like this repo please give a star to it. [![pub package](https://img.shields.io/github/stars/payam-zahedi/flutter_breadcrumb?style=social)](https://github.com/payam-zahedi/flutter_breadcrumb)
