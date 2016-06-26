require 'rspec' 
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'Se inicia Estrella con Vida 100' do
    estrella = Estrella.new
    expect(estrella.vida).to eq 100
  end

  it 'Se inicia Estrella con Masa 100' do
    estrella = Estrella.new
    expect(estrella.vida).to eq 100
  end

  it 'El objeto Estrella es un objeto muerto cuando se inicia' do
    estrella = Estrella.new 0,0
    expect(estrella.objeto_esta_vivo).to eq false
  end

  it 'El objeto Estrella se inicializa con masa de 1 ' do
    estrella = Estrella.new 2, 1
    expect(estrella.masa).to eq 1
  end

  it 'El objeto Estrella se inicializa con vida de 0 ' do
    estrella = Estrella.new 0,0
    expect(estrella.vida).to eq 0
  end

  it 'El ingreso de parametros es incorrecto' do
  expect{estrella = Estrella.new 0,1,0}.to raise_error(ArgumentError)  
  end

end