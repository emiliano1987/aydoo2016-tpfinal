require_relative '../model/objeto_espacial'

class EfectoConstructivo

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado)
		objeto_espacial_genera_impacto.vida += objeto_del_espacio_impactado.masa
	  end
end