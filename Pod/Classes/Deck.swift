//
//  Deck.swift
//  Pods
//
//  Created by Matthew Palmer on 11/03/2015.
//
//

import UIKit

/// A generic Deck type, like a deck of cards or a slide deck.
///
/// A Deck is similar to a Stack, except that you can go forwards and backwards through it. When you get to the end of a Stack, it loops back around to the start.
public class Deck<T> {
    // MARK: - Private attributes
    private var cards: [T] = []
    private var currentCardIndex: Int
    
    // MARK: - Private functions
    /**
    Initializes a new Deck with the provided set of 'cards'.
    
    :param: index The index of the card to retrieve
    
    :returns: The card at the index of `cards`, provided that the index is valid (nil otherwise).
    */
    private func cardAtIndex(index: Int) -> T? {
        if index >= cards.count || index < 0 {
            return nil
        }
        
        return cards[index]
    }
    
    // MARK: - Initialization
    /**
    Initializes a new Deck with the provided set of 'cards'.
    
    :param: cards An array of cards
    
    :returns: A 'Deck' of the provided cards
    */
    public init(cards: [T]) {
        self.cards = cards
        self.currentCardIndex = 0
    }
    
    // MARK: - Public methods
    /**
    Get the card at the top of the deck, without advancing our position in the deck.
    
    :returns: The card at the top of the deck, if it exists.
    */
    public func currentCard() -> T? {
        return cardAtIndex(currentCardIndex)
    }
    
    // Advance our position in the deck forwards and return the next card.
    
    /**
    Advance our position in the deck forwards and return the next card. A 'forward' progression through the deck.
    
    :returns: The next card in the deck, if it exists.
    */
    public func nextCard() -> T? {
        currentCardIndex = currentCardIndex + 1
        
        // Wrap around if we've gone past the end of the deck
        if currentCardIndex >= cards.count {
            currentCardIndex = 0
        }
        
        return cardAtIndex(currentCardIndex)
    }
    
    /**
    Retreat our position in the deck backwards and return the previous card. A 'backward' progression through the deck.
    
    :returns: The previous card in the deck, if it exists.
    */
    public func previousCard() -> T? {
        currentCardIndex = currentCardIndex - 1
        
        // Wrap around if we've gone past the start of the deck
        if currentCardIndex < 0 {
            currentCardIndex = cards.count - 1
        }
        
        return cardAtIndex(currentCardIndex)
    }
}
