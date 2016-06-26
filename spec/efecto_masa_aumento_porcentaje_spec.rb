require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_masa_aumento_porcentaje'

describe 'EfectoMasaAumentaPorcentaje' do

  it 'El impacto entre dos objetos aumenta su masa' do
    nave = Nave.new 50, 50
    asteroide = Asteroide.new 100, 50
    efecto = EfectoMasaAumentaPorcentaje.new 10
   
    efecto.impacto(nave,asteroide)
   
    expect(nave.masa).to eq 55
  end

  it 'El impacto entre dos objetos verifica que el objeto esta con vida' do
    misil = Misil.new 50, 1
    asteroide = Asteroide.new 1000, 1000
    efecto = EfectoMasaAumentaPorcentaje.new 50
   
    efecto.impacto(misil,asteroide)
   
    expect(misil.masa).to eq 501
  end

end