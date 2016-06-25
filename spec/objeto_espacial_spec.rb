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
end
