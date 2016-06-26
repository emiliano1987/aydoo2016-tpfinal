require 'rspec' 
require 'spec_helper'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'deberia contener 100 unidades de vida al crear el objeto espacial' do
    bomba = Bomba.new
    expect(bomba.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear el objeto espacial' do
    bomba = Bomba.new
    expect(bomba.masa).to eq 100
  end

  it 'deberia ser un objeto espacial vivo al generarse' do
    bomba = Bomba.new 1,1
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'deberia ser un objeto espacial vivo con 1 unidad de masa al generarse' do
    bomba = Bomba.new 2, 1
    expect(bomba.masa).to eq 1
  end

  it 'deberia ser un objeto espacial con 0 unidades de vida al instanciarse' do
    bomba = Bomba.new 0,0
    expect(bomba.vida).to eq 0
  end

  it 'deberia no permitir el ingreso de tres parametros al crear la Bomba' do
  	expect{bomba = Bomba.new 0,1,0}.to raise_error(ArgumentError)  
  end

  it 'deberia contener 333 unidades de vida al impactar con otro objeto espacial del tipo Nave' do
    bomba = Bomba.new 433, 500
    nave = Nave.new

    bomba.impacta_con_objeto nave

    expect(bomba.vida).to eq 333
    expect(nave.objeto_esta_vivo).to eq true
  end

end