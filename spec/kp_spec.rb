require 'kp'
describe Kp do
  before(:all) do
    @quotes = File.readlines(File.expand_path('../../lib/kp/quotes.txt', __FILE__)).map(&:strip)
  end

  it 'says famous quotes' do
    expect(@quotes).to include(Kp.says)
    expect(@quotes).to include(*Kp.says(10).split($/))
  end

  it 'debate' do
    expect(Kp.debate).to match(/[z\.]+/i)
  end

  it 'apologize' do
    expect(Kp.apologize).to be_a(String)
    expect(Kp.apologize).not_to be_empty
  end
end