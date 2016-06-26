require 'rspec' 
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'Se inicia Asteroide con Vida 100' do
    asteroide = Asteroide.new
    expect(asteroide.vida).to eq 100
  end

  it 'Se inicia Asteroide con Masa 100' do
    asteroide = Asteroide.new
    expect(asteroide.vida).to eq 100
  end

  it 'El objeto Asteroide es un objeto muerto cuando se inicia' do
    asteroide = Asteroide.new 0,0
    expect(asteroide.objeto_esta_vivo).to eq false
  end

  it 'El objeto Asteroide se inicializa con masa de 1 ' do
    asteroide = Asteroide.new 2, 1
    expect(asteroide.masa).to eq 1
  end

  it 'El objeto Asteroide se inicializa con vida de 0 ' do
    asteroide = Asteroide.new 0,0
    expect(asteroide.vida).to eq 0
  end

  it 'El ingreso de parametros es incorrecto' do
 	expect{asteroide = Asteroide.new 0,1,0}.to raise_error(ArgumentError)  
  end

end