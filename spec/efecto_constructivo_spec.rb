require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_constructivo'

describe 'EfectoConstructivo' do

  it 'El impacto entre dos objetos aumenta el objeto que genera el impacto' do
    asteroide = Asteroide.new 100 , 200
    estrella = Estrella.new 300 , 100
    efecto = EfectoConstructivo.new
    efecto.impacto(asteroide,estrella)
    expect(asteroide.vida).to eq 200
  end

  it 'El impacto entre dos objetos mantiene con vida al objeto que genera el impacto' do
    nave = Nave.new 
    misil = Misil.new 1 , 1
    efecto = EfectoConstructivo.new
    efecto.impacto(nave,misil)
    expect(nave.objeto_esta_vivo).to eq true
  end
end