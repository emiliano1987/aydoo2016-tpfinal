require 'rspec' 
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'deberia contener 100 unidades de vida al crear el objeto espacial' do
    estrella = Estrella.new
    expect(estrella.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear el objeto espacial' do
    estrella = Estrella.new
    expect(estrella.vida).to eq 100
  end

  it 'deberia ser una Estrella muerta al contener 0 unidades de vida cuando se crear el objeto' do
    estrella = Estrella.new 0,0
    expect(estrella.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 1 unidades de masa al crear el objeto espacial' do
    estrella = Estrella.new 2, 1
    expect(estrella.masa).to eq 1
  end

  it 'deberia contener 0 unidades de vida al crear el objeto espacial' do
    estrella = Estrella.new 0,0
    expect(estrella.vida).to eq 0
  end

  it 'deberia no permitir el ingreso de mas de dos parametros al crear la Estrella' do
  expect{estrella = Estrella.new 0,1,0}.to raise_error(ArgumentError)  
  end

  it 'deberia contener 0 unidades de vida al impactar con otra Estrella' do
    estrella = Estrella.new 1000, 20
    nueva_estrella = Estrella.new 1,2

    estrella.impacta_con_objeto nueva_estrella

    expect(estrella.vida).to eq 0
    expect(estrella.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 0 unidades de vida al impactar con una Nave' do
    nave = Nave.new
    nueva_estrella = Estrella.new 1000,2

    nueva_estrella.impacta_con_objeto nave

    expect(nueva_estrella.vida).to eq 0
    expect(nueva_estrella.objeto_esta_vivo).to eq false
  end
end