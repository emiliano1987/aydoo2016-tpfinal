class ObjetoEspacial

	attr_accessor :vida, :masa, :objeto_vivo, :efecto_choque

	 def initialize(*args)

	 	if args.length == 2
	 		inicializa_con_parametros(args[0],args[1])
	 	elsif args.length == 0
	 		inicializa_sin_parametros
	 	else
	 		raise ArgumentError, "Ha ingresado un numero incorrectos de parametros"
 		end
 	end

	private
	def objeto_esta_vivo
	 	if((@vida==0)|| (@masa == 0))
	 		@objeto_vivo = false;
	 	else
	 		@objeto_vivo = true;
	 	end

	 	return @objeto_vivo
	end
	
	def inicializa_con_parametros (vidas,masas)
	  	@vida = vidas
	 	@masa = masas
	 	@objeto_vivo = objeto_esta_vivo
	 end

	def inicializa_sin_parametros
	 	@vida = 100
	 	@masa = 100
	 	@objeto_vivo = true
	end
	
end