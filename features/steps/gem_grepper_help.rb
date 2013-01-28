require 'aruba/api'
class GemGrepperHelp < Spinach::FeatureSteps
  include Aruba::Api

  When 'I successfully run `gem_grepper`' do
    run "gem_grepper help"
  end

  Then 'the exit status should be 0' do
    assert_exit_status(0)
  end

  And 'the output should include useful instructions' do
    assert_passing_with("NAME")
    assert_passing_with("gem_grepper - Gather information about other gems from multiple sources")
    assert_passing_with("SYNOPSIS")
    assert_passing_with("-f, --file")
    assert_passing_with("--help")
    assert_passing_with("--version")
  end
end
