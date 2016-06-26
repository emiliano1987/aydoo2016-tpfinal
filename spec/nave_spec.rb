require 'rspec' 
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'Se inicia Nave con Vida 100' do
    objetoEspacial = Nave.new
    expect(objetoEspacial.vida).to eq 100
  end
end