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

  it 'El objeto espacial con masa de 1 ' do
    nave = Nave.new 3000, 1
    expect(nave.masa).to eq 1
  end

  it 'El objeto espacial vida de 4000 ' do
    nave = Nave.new 4000, 8
    expect(nave.vida).to eq 4000
  end
end