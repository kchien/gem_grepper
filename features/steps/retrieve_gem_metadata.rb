require 'aruba/api'
class RetrieveGemMetadata < Spinach::FeatureSteps
  include Aruba::Api

  When 'I successfully run `gem_grepper get \'spinach, aruba,cucumber,spinach-rails\'`' do
    run "gem_grepper get 'spinach, aruba,cucumber,spinach-rails'"
  end

  When 'I successfully run `gem_grepper get -f spec/fixtures/get_from_flat_text.txt`' do
    run "gem_grepper get -f spec/fixtures/get_from_flat_text.txt"
  end

  When 'I successfully run `gem_grepper get -f spec/fixtures/get_from_lockfile.lock`' do
    run "gem_grepper get -f spec/fixtures/get_from_lockfile.lock"
  end

  Then 'the output should include information about each gem.' do
    pending 'step not implemented'
  end
end
