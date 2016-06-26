require_relative '../model/objeto_espacial'

class EfectoDestructivoPorcentaje

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado, porcentaje_de_impacto)
    		disminuye_vida = (objeto_espacial_genera_impacto.vida * porcentaje_de_impacto / 100)
			objeto_espacial_genera_impacto.vida -= disminuye_vida
	  end
end