require_relative '../model/objeto_espacial'

class EfectoMasaAumentaPorcentaje
	attr_accessor :unidades_de_impacto
	
  	def initialize(unidades_de_impacto)
    	@unidades_de_impacto = unidades_de_impacto
	end
	def impacto(objeto_espacial_genera_impacto, objeto_del_espacio_impactado)
		aumenta_masa = ((objeto_del_espacio_impactado.masa * @unidades_de_impacto) / 100)
		objeto_espacial_genera_impacto.masa += aumenta_masa
	end
end