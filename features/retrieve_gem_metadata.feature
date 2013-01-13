Feature: Retrive Gem Metadata
  As a user
  I would like to know basic information about gems
  Such that I can manipulate and export it.

  Scenario: Query RubyGems with a string list of gems as input
    When I successfully run `gem_grepper get 'spinach, aruba,cucumber,spinach-rails'`
    Then the output should include information about each gem.

  Scenario: Query RubyGems with a flat text file as input
    When I successfully run `gem_grepper get -f spec/fixtures/get_from_flat_text.txt`
    Then the output should include information about each gem.

  Scenario: Query RubyGems with Bundler lockfile as input
    When I successfully run `gem_grepper get -f spec/fixtures/get_from_lockfile.lock`
    Then the output should include information about each gem.
