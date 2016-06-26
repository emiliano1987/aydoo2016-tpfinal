require_relative '../model/objeto_espacial'
require_relative '../model/objeto_espacial'
require_relative '../model/efecto_constructivo'
require_relative '../model/efecto_destructivo_unidades'
require_relative '../model/efecto_destructivo_porcentaje'

class Bomba < ObjetoEspacial

	def initialize (*args)
		super(*args)
    	generar_efectos_segun_objetos (efecto_choque)
    end
	
	private
	def generar_efectos_segun_objetos (mapa_choque)
		mapa_choque[Nave] = EfectoDestructivoUnidades.new 100
	    mapa_choque[Misil] = EfectoDestructivoPorcentaje.new 50
	    mapa_choque[Bomba] = EfectoDestructivoUnidades.new 100
	    mapa_choque[Asteroide] = EfectoDestructivoPorcentaje.new 100
		mapa_choque[Estrella] = EfectoDestructivoUnidades.new 100 
	end

end
