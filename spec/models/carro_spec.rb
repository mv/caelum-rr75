require "spec_helper"

describe Carro do
  it "deveria ser novo" do
    Carro.new.should be_novo
  end
end

