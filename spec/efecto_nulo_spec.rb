require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_nulo'

describe 'EfectoNulo' do

  it 'El impacto entre dos objetos no modifica sus atributos' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoNulo.new

    efecto.impacto(asteroide,bomba)

    expect(bomba.vida).to eq 100
  end
end