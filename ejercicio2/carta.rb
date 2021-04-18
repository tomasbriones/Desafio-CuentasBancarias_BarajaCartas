class Carta
    attr_reader :numero, :pinta
    def initialize(numero, pinta)
        pintas = ['C','D','E','T']
        if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new("#{pinta} No es un argumento válido") 
        end
    end
end
