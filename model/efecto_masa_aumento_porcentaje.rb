require_relative '../model/objeto_espacial'

class EfectoMasaAumentaPorcentaje

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado, porcentaje_aumento_masa)
			aumenta_masa = ((objeto_del_espacio_impactado.masa * porcentaje_aumento_masa) / 100)
			objeto_espacial_genera_impacto.masa += aumenta_masa
	  end
end