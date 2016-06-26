require 'rspec' 
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'Se inicia Asteroide con Vida 100' do
    bomba = Asteroide.new
    expect(bomba.vida).to eq 100
  end

  it 'Se inicia Asteroide con Masa 100' do
    bomba = Asteroide.new
    expect(bomba.vida).to eq 100
  end

end