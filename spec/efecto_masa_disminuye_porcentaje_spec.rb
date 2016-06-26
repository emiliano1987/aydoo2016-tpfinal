require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_masa_disminuye_porcentaje'

describe 'EfectoMasaDisminuyePorcentaje' do

  it 'El impacto entre dos objetos deja sin masa al objeto impactado' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoMasaDisminuyePorcentaje.new
    efecto.impacto(asteroide,bomba,100)
    expect(asteroide.masa).to eq 0
  end

  it 'El impacto entre dos objetos deja sin vida al objeto que impacta' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoMasaDisminuyePorcentaje.new
    efecto.impacto(asteroide,bomba,100)
    expect(asteroide.objeto_esta_vivo).to eq false
  end

end