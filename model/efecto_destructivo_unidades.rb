require_relative '../model/objeto_espacial'

class EfectoDestructivoUnidades

  attr_accessor :unidades_de_impacto

  def initialize(unidades_de_impacto)
    @unidades_de_impacto = unidades_de_impacto
  end

  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado)
    objeto_espacial_genera_impacto.vida -= @unidades_de_impacto
  end
end