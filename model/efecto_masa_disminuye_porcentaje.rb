require_relative '../model/objeto_espacial'

class EfectoMasaDisminuyePorcentaje

  attr_accessor :porcentaje_disminuye_masa

  def initialize(porcentaje_disminuye_masa)
    @porcentaje_disminuye_masa = porcentaje_disminuye_masa
  end

  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado)
    disminuye_masa = ((objeto_del_espacio_impactado.masa * @porcentaje_disminuye_masa) / 100)
    objeto_espacial_genera_impacto.masa -= disminuye_masa
  end
end