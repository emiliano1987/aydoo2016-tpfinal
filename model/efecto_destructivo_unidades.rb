require_relative '../model/objeto_espacial'

class EfectoDestructivoUnidades

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado, unidades_de_impacto)
			objeto_espacial_genera_impacto.vida -= unidades_de_impacto
	  end
end