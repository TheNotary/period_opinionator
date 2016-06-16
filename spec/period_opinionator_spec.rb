require 'spec_helper'

describe PeriodOpinionator do

  before :each do
    @un_corrected_string = "This is a sentence.  Typography is important to get correct.    So is writing code like `this.powerful(function)`"
    @corrected_string = "This is a sentence. Typography is important to get correct. So is writing code like `this.powerful(function)`"
  end

  it 'has a version number' do
    expect(PeriodOpinionator::VERSION).not_to be nil
  end

  it 'corrects a basic string of text' do
    # binding.pry
    result = PeriodOpinionator.correct(@un_corrected_string)
    expect(result[:body]).to eq(@corrected_string)
  end
end
