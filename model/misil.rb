require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_unidades'
require_relative '../model/efecto_nulo'

class Misil < ObjetoEspacial

	def initialize (*args)
		super(*args)
    	generar_efectos_segun_objetos(efecto_choque)
    end
	
	private
	def generar_efectos_segun_objetos (mapa_choque)
		mapa_choque[Nave] = EfectoDestructivoUnidades.new 100
	    mapa_choque[Misil] = EfectoDestructivoUnidades.new 80
	    mapa_choque[Bomba] = EfectoNulo.new
	    mapa_choque[Asteroide] = EfectoNulo.new
		mapa_choque[Estrella] = EfectoNulo.new
	end
end
