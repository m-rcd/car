require 'engine'

describe Engine do
  let(:engine) { described_class.new }
  it '#switch_on' do
    expect{ engine.switch_on }.to change{ engine.engine_on }.from(false).to (true)
  end

  it '#switch_off' do
    engine.switch_on
    expect{ engine.switch_off }.to change{ engine.engine_on }.from(true).to (false)
  end
end
