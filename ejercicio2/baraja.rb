class Baraja
    def initialize(cartas)
        if cartas.is_a?(Array)
            @cartas = cartas
        else
            raise ArgumentError.new("#{cartas} is not an array type")
        end
        
    end
end