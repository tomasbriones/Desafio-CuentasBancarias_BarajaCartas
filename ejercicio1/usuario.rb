class Usuario
    attr_reader :nombre
    attr_accessor :array

    def initialize(nombre,array)
        if array.is_a?(Array)
            @nombre = nombre
            @array = array
        else
            raise ArgumentError.new("Argument '#{array}' is not a array")
        end
    end

    def saldo_total()
        self.array.inject(0){|sum,x| sum+x.saldo}
    end
    
end