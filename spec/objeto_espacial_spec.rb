require 'rspec' 
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'ObjetoEspacial' do

  it 'Se inicia el Objeto Espacial con Vida 100' do
    objetoEspacial = ObjetoEspacial.new
    expect(objetoEspacial.vida).to eq 100
  end

  it 'Se inicia el Objeto Espacial con Masa 100' do
    objetoEspacial = ObjetoEspacial.new
    expect(objetoEspacial.masa).to eq 100
  end

   it 'El objeto espacial es un objeto vivo cuando se inicia' do
    objetoEspacial = ObjetoEspacial.new
    expect(objetoEspacial.objeto_esta_vivo).to eq true
  end

   it 'El objeto espacial es un objeto muerto cuando su masa es 0' do
    objetoEspacial = ObjetoEspacial.new
    objetoEspacial.masa = 0
    expect(objetoEspacial.objeto_esta_vivo).to eq false
  end

   it 'El objeto espacial es un objeto muerto cuando su vida es 0' do
    objetoEspacial = ObjetoEspacial.new
    objetoEspacial.vida = 0
    expect(objetoEspacial.objeto_esta_vivo).to eq false
  end

end
