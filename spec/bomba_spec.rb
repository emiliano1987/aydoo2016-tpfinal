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

  it 'La Bomba es un objeto muerto cuando se inicia' do
    misil = Bomba.new 0,0
    expect(misil.objeto_esta_vivo).to eq false
  end

  it 'El misil se inicializa con masa de 1 ' do
    misil = Bomba.new 2, 1
    expect(misil.masa).to eq 1
  end

  it 'El misil se inicializa con vida de 0 ' do
    misil = Bomba.new 0,0
    expect(misil.vida).to eq 0
  end

end