require 'aruba/api'
class GemGrepperHelp < Spinach::FeatureSteps
  include Aruba::Api

  When 'I successfully run `gem_grepper`' do
    run "gem_grepper help"
  end
end
