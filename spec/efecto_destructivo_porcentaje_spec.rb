require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_destructivo_porcentaje'

describe 'EfectoDestructivoPorcentaje' do

  it 'El impacto entre dos objetos no modifica sus atributos' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoDestructivoPorcentaje.new
    efecto.impacto(asteroide,bomba,100)
    expect(asteroide.vida).to eq 0
  end

end