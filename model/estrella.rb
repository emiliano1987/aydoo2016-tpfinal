require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_porcentaje'
require_relative '../model/efecto_nulo'

class Estrella < ObjetoEspacial

	def initialize (*args)
		super(*args)
    	generar_efectos_segun_objetos (efecto_choque)
    end
	
	private
	def generar_efectos_segun_objetos (mapa_choque)
		mapa_choque[Nave] = EfectoDestructivoPorcentaje.new 100
	    mapa_choque[Misil] = EfectoNulo.new 
	    mapa_choque[Bomba] = EfectoDestructivoPorcentaje.new 100
	    mapa_choque[Asteroide] = EfectoDestructivoPorcentaje.new 100
		mapa_choque[Estrella] = EfectoDestructivoPorcentaje.new 100 
	end

end
