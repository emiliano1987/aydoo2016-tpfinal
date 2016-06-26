require_relative '../model/objeto_espacial'

class EfectoMasaDisminuyePorcentaje

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado, porcentaje_aumento_masa)
			disminuye_masa = ((objeto_del_espacio_impactado.masa * porcentaje_aumento_masa) / 100)
			objeto_espacial_genera_impacto.masa -= disminuye_masa
	  end
end