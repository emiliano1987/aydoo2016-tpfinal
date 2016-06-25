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

   it 'El objeto espacial con masa de 300 ' do
    objetoEspacial = ObjetoEspacial.new 10, 300
    expect(objetoEspacial.masa).to eq 300
  end

   it 'El objeto espacial vida de 1000 ' do
    objetoEspacial = ObjetoEspacial.new 1000, 41
    expect(objetoEspacial.vida).to eq 1000
  end

   it 'El ingreso de parametros es incorrecto' do
 	expect{objetoEspacial = ObjetoEspacial.new 1000, 41 , 10}.to raise_error(ArgumentError)  
 end
end
