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
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 150 unidades de vida al impactar con otro objeto espacial del tipo Misil' do
    bomba = Bomba.new 300, 300
    misil = Misil.new 1500, 1500

    bomba.impacta_con_objeto misil

    expect(bomba.vida).to eq 150
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 1000 unidades de vida al impactar con otro objeto espacial del mismo tipo (Bomba)' do
    bomba = Bomba.new 1100, 400
    segunda_bomba = Bomba.new 10, 300

    bomba.impacta_con_objeto segunda_bomba

    expect(bomba.vida).to eq 1000
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 0 unidades de vida al impactar con otro objeto espacial del tipo Asteroide' do
    bomba = Bomba.new 
    asteroide = Asteroide.new 

    bomba.impacta_con_objeto asteroide

    expect(bomba.vida).to eq 0
    expect(bomba.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 1 unidad de vida al impactar con otro objeto espacial del tipo Estrella' do
    bomba = Bomba.new 101,100
    estrella = Estrella.new 

    bomba.impacta_con_objeto estrella

    expect(bomba.vida).to eq 1
    expect(bomba.objeto_esta_vivo).to eq true
  end

  it 'deberia ser un objeto sin vida al impactar con todos los demas objetos creados' do
    bomba = Bomba.new 10000, 500
    segunda_bomba = Bomba.new 80, 50
    estrella = Estrella.new 
    misil = Misil.new
    nave = Nave.new 1,1
    asteroide = Asteroide.new 1,100
    
    bomba.impacta_con_objeto asteroide

    expect(bomba.objeto_esta_vivo).to eq false
  end

end