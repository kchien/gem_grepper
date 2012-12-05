Feature: Retrive Gem Metadata
  As a user
  I would like to know basic information about gems
  Such that I can manipulate and export it.

  Scenario: Query RubyGems
    Given I have a list of gems
    And I run gem_grepper with that list
    Then the output should include information about each gem.
