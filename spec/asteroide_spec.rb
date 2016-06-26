require 'rspec' 
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'deberia contener 100 unidades de vida al crear el Asteroide' do
    asteroide = Asteroide.new
    
    expect(asteroide.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear el Asteroide' do
    asteroide = Asteroide.new
    
    expect(asteroide.masa).to eq 100
  end

  it 'deberia ser un objeto sin vida al crearse ya que su vida y masa es 0' do
    asteroide = Asteroide.new 0,0
    
    expect(asteroide.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 1 unidad de masa al crear el Asteroide' do
    asteroide = Asteroide.new 2, 1
    
    expect(asteroide.masa).to eq 1
  end

  it 'deberia contener 0 unidades de vida al crear el Asteroide' do
    asteroide = Asteroide.new 0,0
    
    expect(asteroide.vida).to eq 0
  end

  it 'deberia no permitir el ingreso de mas de dos parametros al crear el objeto espacial' do
 	  
    expect{asteroide = Asteroide.new 1,1,1}.to raise_error(ArgumentError)  
  end

  it 'deberia contener 600 unidades de masa al impactar con otro objeto espacial del tipo Nave' do
    asteroide = Asteroide.new 500, 500
    nave = Nave.new 1000,1000

    asteroide.impacta_con_objeto nave

    expect(asteroide.masa).to eq 600
    expect(asteroide.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de masa al impactar con otro objeto espacial del tipo Bomba' do
    asteroide = Asteroide.new 500, 500
    bomba = Bomba.new 10000,50

    asteroide.impacta_con_objeto bomba

    expect(asteroide.masa).to eq 500
    expect(asteroide.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de masa al impactar con otro objeto espacial del tipo Misil' do
    asteroide = Asteroide.new 500, 500
    misil = Misil.new 1,3540

    asteroide.impacta_con_objeto misil

    expect(asteroide.masa).to eq 500
    expect(asteroide.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de masa al impactar con otro objeto espacial del tipo Estrella' do
    asteroide = Asteroide.new 500, 500
    estrella = Estrella.new 1300, 1

    asteroide.impacta_con_objeto estrella

    expect(asteroide.masa).to eq 500
    expect(asteroide.objeto_esta_vivo).to eq true
  end

  it 'deberia no modificar sus unidades de masa al impactar con otro objeto espacial del tipo Asteroide' do
    asteroide = Asteroide.new 500, 500
    segundo_asteroide = Asteroide.new 1300, 1

    asteroide.impacta_con_objeto segundo_asteroide

    expect(asteroide.masa).to eq 500
    expect(asteroide.objeto_esta_vivo).to eq true
  end
  
  it 'deberia no modificar sus unidades de masa al impactar con otros objetos espaciales' do
    asteroide = Asteroide.new 199, 221
    estrella = Estrella.new 1300, 1
    misil = Misil.new 1,3540
    bomba = Bomba.new 10000,50
    segundo_asteroide = Asteroide.new 1300, 1

    asteroide.impacta_con_objeto estrella
    asteroide.impacta_con_objeto segundo_asteroide
    asteroide.impacta_con_objeto bomba
    asteroide.impacta_con_objeto misil


    expect(asteroide.masa).to eq 221
    expect(asteroide.objeto_esta_vivo).to eq true
  end
end