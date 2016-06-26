require 'rspec' 
require 'spec_helper'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'Se inicia Bomba con Vida 100' do
    bomba = Bomba.new
    expect(bomba.vida).to eq 100
  end

  it 'Se inicia Bomba con Masa 100' do
    bomba = Bomba.new
    expect(bomba.vida).to eq 100
  end


end