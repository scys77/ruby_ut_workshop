require 'spec_helper'

describe RubyUtWorkshop::HelloWorld do

  it 'example test' do
    expect('hello world').to eq 'hello world'
  end

  it 'should be mocked' do
    hello_world = RubyUtWorkshop::HelloWorld.new
    allow(hello_world).to receive(:been_called).and_return("hello world")
    expect(hello_world.been_called).to eq 'hello world'
  end

end
