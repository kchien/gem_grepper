class RetriveGemMetadata < Spinach::FeatureSteps
  Given 'I have a list of gems' do
    @gems = ['rspec','spinach']
  end

  And 'I run gem_grepper with that list' do
    ap @gems
    @results = system("gem_grepper -i #{@gems}")
    @results.should_not eq false
  end

  Then 'the output should include information about each gem.' do
    pending 'step not implemented'
  end
end
