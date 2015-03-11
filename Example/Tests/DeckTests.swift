//
//  DeckTests.swift
//  Deck
//
//  Created by Matthew Palmer on 11/03/2015.
//  Copyright (c) 2015 matthewpalmer. All rights reserved.
//

import UIKit
import XCTest
import Deck

class DeckTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyDeck() {
        let empty = Deck(cards: [Int]())
        XCTAssert(empty.nextCard() == nil, "Empty deck next card should be nil")
        XCTAssert(empty.currentCard() == nil, "Empty deck current card should be nil")
        XCTAssert(empty.previousCard() == nil, "Empty deck previous card should be nil")
    }
    
    func testSingleDeck() {
        let single = Deck(cards: [1])
        XCTAssert(single.nextCard() == single.previousCard(), "Single card deck should have the same next and previous")
    }
    
    func testLargeDeck() {
        let deck = Deck(cards: [1, 2, 3, 4, 5])
        XCTAssert(deck.currentCard() == 1, "Large deck's initial current card is the first item provided")
        XCTAssert(deck.previousCard() == 5, "Large deck's initial previous card moves us to the last item provided")
        XCTAssert(deck.nextCard() == 1, "Large deck's next card after going previous once is the first item provided")
        XCTAssert(deck.nextCard() == 2, "Large deck's initial next card is the second item provided")
        XCTAssert(deck.nextCard() == 3, "nextCard should advance the deck")
        XCTAssert(deck.nextCard() == 4, "nextCard should advance the deck")
        XCTAssert(deck.previousCard() == 3, "previousCard should retreat the deck")
        XCTAssert(deck.currentCard() == 3, "currentCard should get the appropriate card after advance/retreat")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
