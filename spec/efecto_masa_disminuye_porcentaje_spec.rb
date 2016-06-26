require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_masa_disminuye_porcentaje'

describe 'EfectoMasaDisminuyePorcentaje' do

  it 'El impacto entre dos objetos deja sin masa al objeto que impacta ' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoMasaDisminuyePorcentaje.new 100
    
    efecto.impacto(asteroide,bomba)
    
    expect(asteroide.masa).to eq 0
  end

  it 'El impacto entre dos objetos deja sin vida al objeto que impacta' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoMasaDisminuyePorcentaje.new 100
    
    efecto.impacto(asteroide,bomba)
    
    expect(asteroide.objeto_esta_vivo).to eq false
  end

  it 'El impacto entre dos objetos mantiene con vida al objeto que impacta ' do
    asteroide = Asteroide.new 300, 15
    bomba = Bomba.new 456, 10
    efecto = EfectoMasaDisminuyePorcentaje.new 10
    
    efecto.impacto(asteroide,bomba)
    
    expect(asteroide.objeto_esta_vivo).to eq true
  end
end