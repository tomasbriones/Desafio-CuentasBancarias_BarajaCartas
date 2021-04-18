class Baraja
    attr_accessor :cartas
    def initialize()
        @cartas = []
        pintas = ['C','D','E','T'] 
        #se pide crear todas las combinaciones de numero y pinta en el initialize
        for i in 1..13
            pintas.each {|pinta| self.cartas.push(Carta.new(i,pinta))}
        end
    end

    def barajar()
        #desordenamos la baraja de cartas
        self.cartas = self.cartas.shuffle
    end
    
    def sacar()
        #con reverse invertimos el orden del arreglo y asi podemos sacar el primer elemento con .pop
        carta_sacada = self.cartas.reverse.pop
        self.cartas.shift
        return carta_sacada
    end

    def repartir()
        #con first sacamos las primeras 5 cartas y con shift eliminamos las cartas repartidas de la baraja
        repartidas = self.cartas.first(5)
        5.times {self.cartas.shift}
        return repartidas
    end
    
end