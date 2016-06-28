require 'rspec' 
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia contener 100 unidades de vida al crear la Nave' do
    nave = Nave.new

    expect(nave.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear la Nave' do
    nave = Nave.new

    expect(nave.vida).to eq 100
  end

  it 'deberia esta viva la nave al generarse' do
    nave = Nave.new

    expect(nave.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 1 unidad de masa al instanciarse' do
    nave = Nave.new 3000, 1

    expect(nave.masa).to eq 1
  end

  it 'deberia contener 4000 unidad de vida al crearse' do
    nave = Nave.new 4000, 8

    expect(nave.vida).to eq 4000
  end

  it 'deberia no permitir el ingreso de un parametros al crear la Nave' do

    expect{nave = Nave.new 1 }.to raise_error(ParametrosIncorrectosError)  
  end

  it 'deberia contener 8 unidades de vida al impactar con otro objeto espacial del mismo tipo (Nave)' do
    nave = Nave.new 108, 10
    nueva_nave = Nave.new

    nave.impacta_con_objeto nueva_nave

    expect(nave.vida).to eq 8
    expect(nave.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 200 unidades de vida al impactar con otro objeto espacial del tipo Misil' do
    nave = Nave.new 280, 1000
    misil = Misil.new 180, 1000

    nave.impacta_con_objeto misil

    expect(nave.vida).to eq 200
    expect(nave.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 0 unidades de vida al impactar con otro objeto espacial del tipo Bomba' do
    nave = Nave.new 50, 1000
    bomba = Bomba.new 1000, 50

    nave.impacta_con_objeto bomba

    expect(nave.vida).to eq 0
    expect(nave.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 100 unidades de vida y 350 de masa al impactar con otro objeto espacial del tipo Asteroide' do
    nave = Nave.new 100, 400
    asteroide = Asteroide.new 

    nave.impacta_con_objeto asteroide

    expect(nave.masa).to eq 350
    #Se verifica que la vida no se modifica al impactar
    expect(nave.vida).to eq 100
    expect(nave.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 500 unidades de vida al impactar con otro objeto espacial del tipo Estrella' do
    nave = Nave.new 400, 400
    estrella = Estrella.new 

    nave.impacta_con_objeto estrella

    expect(nave.vida).to eq 500
    expect(nave.objeto_esta_vivo).to eq true
  end

  it 'deberia contener 0 unidades de vida al impactar con otro dos objetos espaciales del tipo Bomba' do
    nave = Nave.new 
    primer_bomba = Bomba.new 
    segunda_bomba = Bomba.new 

    nave.impacta_con_objeto primer_bomba
    nave.impacta_con_objeto segunda_bomba

    expect(nave.vida).to eq 0
    expect(nave.objeto_esta_vivo).to eq false
  end

  it 'deberia no poder impactar con otro objeto espacial cuando ya no tiene vida' do
    nave = Nave.new 1,1
    primer_bomba = Bomba.new 
    segunda_bomba = Bomba.new 

    nave.impacta_con_objeto primer_bomba

    expect{nave.impacta_con_objeto segunda_bomba}.to raise_error(ObjetoEspacialSinVidaError)
  end

  it 'deberia eliminar un choque posible de la Nave' do
    nave = Nave.new

    nave.eliminar_choque Misil

    expect(nave.efecto_choque[Misil]).to eq nil
  end

  it 'deberia agregar nuevos objetos espaciales con nuevos efectos para la Nave' do
    nave = Nave.new
    misil = Misil.new

    nave.agregar_choque misil, "efecto_masa_aumenta_unidades"

    expect(nave.efecto_choque[Misil]).to eq "efecto_masa_aumenta_unidades"
  end
end