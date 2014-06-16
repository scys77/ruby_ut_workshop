require 'spec_helper'

describe RubyUtWorkshop::HelloWorld do

  it 'example test' do
    expect('hello world').to eq 'hello world'
  end

  context '#been_called' do

    it 'should be mocked' do
      hello_world = RubyUtWorkshop::HelloWorld.new
      hello_world = double(:been_called => 'hello world')
      expect(hello_world.been_called).to eq 'hello world'
    end

  end

end
