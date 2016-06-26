require_relative '../model/objeto_espacial'

class EfectoDestructivoPorcentaje
	attr_accessor :porcentaje_de_impacto

  	def initialize(porcentaje_de_impacto)
    	@porcentaje_de_impacto = porcentaje_de_impacto
	end

	  def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado)
    	disminuye_vida = (objeto_espacial_genera_impacto.vida * @porcentaje_de_impacto / 100)
		objeto_espacial_genera_impacto.vida -= disminuye_vida
	  end
end