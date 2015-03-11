#
# Be sure to run `pod lib lint Deck.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Deck"
  s.version          = "0.1.0"
  s.summary          = "A generic Deck type, like a deck of cards or a slide deck."
  s.description      = <<-DESC
    A generic Deck type, like a deck of cards or a slide deck.

    A Deck is similar to a Stack, except that you can go forwards and backwards through it. When you get to the end of a Stack, it loops back around to the start.
    DESC
  s.homepage         = "https://github.com/matthewpalmer/Swift-Deck"

  s.license          = 'MIT'
  s.author           = { "matthewpalmer" => "matt@matthewpalmer.net" }
  s.source           = { :git => "https://github.com/matthewpalmer/Swift-Deck.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Deck' => ['Pod/Assets/*.png']
  }
end
