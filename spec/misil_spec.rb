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

end