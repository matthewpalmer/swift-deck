# Deck

A generic Deck type, like a deck of cards or a slide deck.

A Deck is similar to a Stack, except that you can go forwards and backwards through it. When you get to the end of a Stack, it loops back around to the start.

[![CI Status](http://img.shields.io/travis/matthewpalmer/Deck.svg?style=flat)](https://travis-ci.org/matthewpalmer/Deck)
[![Version](https://img.shields.io/cocoapods/v/Deck.svg?style=flat)](http://cocoadocs.org/docsets/Deck)
[![License](https://img.shields.io/cocoapods/l/Deck.svg?style=flat)](http://cocoadocs.org/docsets/Deck)
[![Platform](https://img.shields.io/cocoapods/p/Deck.svg?style=flat)](http://cocoadocs.org/docsets/Deck)

## Usage

Create a new Deck with the provided 'Cards', where 'Cards' are really anything.

```swift
let firstFive = Deck(cards: [1, 2, 3, 4, 5])
```

Move forwards and backwards through the Deck

```swift
firstFive.currentCard()  // == 1
firstFive.nextCard()     // == 2
firstFive.nextCard()     // == 3
firstFive.previousCard() // == 2
firstFive.previousCard() // == 1
```

## Requirements
This is implemented in Swift, so iOS 8.0+ is required.

## Installation

Deck is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "Deck"

## Author

matthewpalmer, matt@matthewpalmer.net

## License

Deck is available under the MIT license. See the LICENSE file for more info.

