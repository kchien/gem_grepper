Feature: gem_grepper help
  In order to help users understand options
  I want to ensure gem_grepper help runs by default
  So they can see the basic usage instructions.

  Scenario: App outputs usage instructions
    When I successfully run `gem_grepper`
    Then the exit status should be 0
    And the output should include usage instructions

  Scenario: App outputs `get` usage instructions
    When I successfully run `gem_grepper help get`
    Then the exit status should be 0
    And the output should include `get` usage instructions
