require 'rspec' 
require 'spec_helper'
require_relative '../model/misil'

describe 'Misil' do

  it 'Se inicia Misil con Vida 100' do
    misil = Misil.new
    expect(misil.vida).to eq 100
  end

  it 'Se inicia Misil con Masa 100' do
    misil = Misil.new
    expect(misil.vida).to eq 100
  end

  it 'La misil es un objeto vivo cuando se inicia' do
    misil = Misil.new 1, 2
    expect(misil.objeto_esta_vivo).to eq true
  end

  it 'La misil es un objeto muerto cuando se inicia' do
    misil = Misil.new 0,0
    expect(misil.objeto_esta_vivo).to eq false
  end

end