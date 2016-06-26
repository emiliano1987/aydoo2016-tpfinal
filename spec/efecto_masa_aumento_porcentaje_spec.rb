require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_masa_aumento_porcentaje'

describe 'EfectoMasaAumentaPorcentaje' do

  it 'El impacto entre dos objetos aumenta su masa' do
    nave = Nave.new 50, 50
    asteroide = Asteroide.new 100, 50
    efecto = EfectoMasaAumentaPorcentaje.new
    efecto.impacto(nave,asteroide,10)
    expect(nave.masa).to eq 55
  end


end