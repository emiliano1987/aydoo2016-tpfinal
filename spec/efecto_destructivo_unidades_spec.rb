require 'rspec' 
require 'spec_helper'
require_relative '../model/efecto_destructivo_unidades'

describe 'EfectoDestructivoUnidades' do

  it 'El impacto entre dos objetos deja con la mitad de la vida al que genera el choque' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(asteroide,bomba,50)
    expect(asteroide.vida).to eq 50
  end

  it 'El impacto entre dos objetos modifica la vida del objeto impactado' do
    nave = Nave.new
    asteroide = Asteroide.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(nave,asteroide,30)
    expect(nave.vida).to eq 70
  end

  it 'El impacto entre una Estrella y un Misil modifica la vida del objeto impactado' do
    estrella = Estrella.new
    misil = Misil.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(estrella,misil,10)
    expect(estrella.vida).to eq 90
  end

  it 'El impacto entre dos objetos verifica que el objeto que genera el impacto esta con vida' do
    estrella = Estrella.new
    misil = Misil.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(estrella,misil,10)
    expect(estrella.objeto_esta_vivo).to eq true
  end

  it 'El impacto entre dos objetos verifica que el objeto que genera el impacto esta sin vida' do
    estrella = Estrella.new 10,1
    misil = Misil.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(estrella,misil,10)
    expect(estrella.objeto_esta_vivo).to eq false
  end

  it 'El impacto entre dos objetos es mayor a la vida del objeto impactado' do
    estrella = Estrella.new 30,50
    misil = Misil.new
    efecto = EfectoDestructivoUnidades.new
    efecto.impacto(estrella,misil,40)
    expect(estrella.objeto_esta_vivo).to eq false
  end
end