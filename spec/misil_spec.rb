require 'rspec' 
require 'spec_helper'
require_relative '../model/misil'

describe 'Misil' do

  it 'deberia contener 100 unidades de vida al crear el Misil' do
    misil = Misil.new

    expect(misil.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear el Misil' do
    misil = Misil.new

    expect(misil.masa).to eq 100
  end

  it 'deberia ser un objeto espacial vivo al crear el Misil con 1 unidad de vida y 2 de masa' do
    misil = Misil.new 1, 2

    expect(misil.objeto_esta_vivo).to eq true
  end

  it 'deberia ser un objeto espacial sin vida al crear el Misil con 0 unidades de vida y 0 de masa' do
    misil = Misil.new 0,0

    expect(misil.objeto_esta_vivo).to eq false
  end

  it 'deberia ser un Misil con 1 unidad de masa' do
    misil = Misil.new 2, 1

    expect(misil.masa).to eq 1
  end

  it 'deberia ser un objeto espacial sin vida al crear el Misil con 0 unidades de vida' do
    misil = Misil.new 0,5000

    expect(misil.vida).to eq 0
  end

  it 'deberia no permitir el ingreso de mas de dos parametros al crear la Nave' do

 	  expect{misil = Misil.new 100,501,800,11}.to raise_error(ParametrosIncorrectosError)  
  end

  it 'deberia contener 325 unidades de vida al impactar con otro objeto espacial del tipo Nave' do
    misil = Misil.new 425, 800
    nave = Nave.new 311, 77

    misil.impacta_con_objeto nave

    expect(misil.vida).to eq 325
    expect(misil.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 50 unidades de vida al impactar con otro objeto espacial del mismo tipo (Misil)' do
    misil = Misil.new 150, 800
    segundo_misil = Misil.new 110, 40

    misil.impacta_con_objeto segundo_misil

    expect(misil.vida).to eq 50
    expect(misil.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de vida y masa al impactar con un objeto espacial del tipo Bomba' do
    misil = Misil.new 
    bomba = Bomba.new 

    misil.impacta_con_objeto bomba

    #Se verifica que no se haya modificado los valores
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100
    expect(misil.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de vida y masa al impactar con un objeto espacial del tipo Asteroide' do
    misil = Misil.new 
    asteroide = Asteroide.new 

    misil.impacta_con_objeto asteroide

    #Se verifica que no se haya modificado los valores
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100
  end

  it 'deberia no modificar sus unidades de vida y masa al impactar con un objeto espacial del tipo Estrella' do
    misil = Misil.new 
    estrella = Estrella.new 

    misil.impacta_con_objeto estrella

    #Se verifica que no se haya modificado los valores
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100
  end

  it 'deberia modificar sus unidades de vida y masa al impactar con otros objeto espaciales' do
    misil = Misil.new 1000,200
    bomba = Bomba.new 300, 400
    estrella = Estrella.new 900,100
    segundo_misil = Misil.new 10,300
    nave = Nave.new 100,9000

    misil.impacta_con_objeto bomba
    misil.impacta_con_objeto estrella
    misil.impacta_con_objeto segundo_misil
    misil.impacta_con_objeto nave

    expect(misil.vida).to eq 800
    expect(misil.masa).to eq 200
  end
end