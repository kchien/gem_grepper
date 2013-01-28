require 'aruba/api'
class GemGrepperHelp < Spinach::FeatureSteps
  include Aruba::Api

  Then 'the exit status should be 0' do
    assert_exit_status(0)
  end

  When 'I successfully run `gem_grepper`' do
    run "gem_grepper help"
  end

  When 'I successfully run `gem_grepper help get`' do
    run "gem_grepper help get"
  end

  When 'I successfully run `gem_grepper help export`' do
    run "gem_grepper help export"
  end

  And 'the output should include usage instructions' do
    assert_passing_with("NAME")
    assert_passing_with("gem_grepper - Gather information about other gems from multiple sources")
    assert_passing_with("SYNOPSIS")
    assert_passing_with("--help")
    assert_passing_with("--version")
    assert_passing_with("COMMANDS")
    assert_passing_with("export - Output gem data in a specified format")
    assert_passing_with("get    - Retrieve data about specified gems")
    assert_passing_with("help   - Shows a list of commands or help for one command")
  end

  And 'the output should include `get` usage instructions' do
    assert_passing_with("NAME")
    assert_passing_with("get -")
    assert_passing_with("SYNOPSIS")
    assert_passing_with("'comma-delimited,list,of,gems'")
    assert_passing_with("COMMAND OPTIONS")
    assert_passing_with("-f, --file")
  end

  And 'the output should include `export` usage instructions' do
    assert_passing_with("NAME")
    assert_passing_with("SYNOPSIS")
    assert_passing_with("COMMAND OPTIONS")
    assert_passing_with("-f, --format")
    assert_passing_with("-o, --output")
  end
end
