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

  it 'El objeto Bomba es un objeto vivo cuando se inicia' do
    bomba = Bomba.new 1,1
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'El objeto bomba se inicializa con masa de 1 ' do
    bomba = Bomba.new 2, 1
    expect(bomba.masa).to eq 1
  end

  it 'El objeto bomba se inicializa con vida de 0 ' do
    bomba = Bomba.new 0,0
    expect(bomba.vida).to eq 0
  end

  it 'El ingreso de parametros es incorrecto' do
 	expect{bomba = Bomba.new 0,1,0}.to raise_error(ArgumentError)  
  end

end