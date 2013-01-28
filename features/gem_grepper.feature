Feature: gem_grepper runs
  In order to help users understand options
  I want to have ensure gem_grepper runs
  So they can see the basic usage instructions.

  Scenario: App outputs usage instructions
    When I successfully run `gem_grepper`
    Then the exit status should be 0
