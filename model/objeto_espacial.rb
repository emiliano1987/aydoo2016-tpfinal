class ObjetoEspacial

	attr_accessor :vida, :masa, :objeto_vivo, :efecto_choque

	 def initialize(*args)
	 	@vida = 100
	 	@masa = 100
	 end

	 def objeto_esta_vivo
	 	if((@vida==0)|| (@masa == 0))
	 		@objeto_vivo = false;
	 	else
	 		@objeto_vivo = true;
	 	end
	 	return @objeto_vivo
	 end
	
end