require 'rspec' 
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'ObjetoEspacial' do

  it 'deberia contener 100 unidades de vida al crear el objeto espacial' do
    objetoEspacial = ObjetoEspacial.new

    expect(objetoEspacial.vida).to eq 100
  end

  it 'deberia contener 100 unidades de masa al crear el objeto espacial' do
    objetoEspacial = ObjetoEspacial.new

    expect(objetoEspacial.masa).to eq 100
  end

  it 'deberia ser un objeto con vida al instanciarse' do
    objetoEspacial = ObjetoEspacial.new

    expect(objetoEspacial.objeto_esta_vivo).to eq true
  end

  it 'deberia ser un objeto sin vida al contener su masa con valor 0' do
    objetoEspacial = ObjetoEspacial.new

    objetoEspacial.masa = 0

    expect(objetoEspacial.objeto_esta_vivo).to eq false
  end

  it 'deberia ser un objeto sin vida al contener su vida con valor 0' do
    objetoEspacial = ObjetoEspacial.new

    objetoEspacial.vida = 0

    expect(objetoEspacial.objeto_esta_vivo).to eq false
  end

  it 'deberia contener 300 unidades de masa al crear el objeto espacial' do
    objetoEspacial = ObjetoEspacial.new 10, 300

    expect(objetoEspacial.masa).to eq 300
  end

  it 'deberia contener 1000 unidades de vida al crear el objeto espacial' do
    objetoEspacial = ObjetoEspacial.new 1000, 41

    expect(objetoEspacial.vida).to eq 1000
  end
   
  it 'deberia contener 1000 unidades de vida y ser un objeto vivo al crear el objeto espacial' do
    objetoEspacial = ObjetoEspacial.new 1000, 41

    expect(objetoEspacial.objeto_esta_vivo).to eq true
  end

  it 'deberia no permitir el ingreso de mas de dos parametros al crear el objeto espacial' do

    expect{objetoEspacial = ObjetoEspacial.new 1000, 41 , 100, 10, 10}.to raise_error(ArgumentError)  
  end
end
