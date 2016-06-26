require 'rspec' 
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'Se inicia Nave con Vida 100' do
    nave = Nave.new
    expect(nave.vida).to eq 100
  end

  it 'Se inicia Nave con Masa 100' do
    nave = Nave.new
    expect(nave.vida).to eq 100
  end

   it 'La nave es un objeto vivo cuando se inicia' do
    nave = Nave.new
    expect(nave.objeto_esta_vivo).to eq true
  end
end