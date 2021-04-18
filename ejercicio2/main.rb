
require_relative 'carta'
require_relative 'baraja'

mazo = []
pintas = ['C','D','E','T'] 
5.times do |x|
    numero = rand(1..13)
    pinta = pintas.sample(1).join #sample devuelve siempre un arreglo. Al usar to_s, cambiaria el tipo del elemento del arreglo, pero no cambia a un string. Con join logro eso
    mazo.push(Carta.new(numero,pinta)) #agrego las nuevas instancias al arreglo mazo 
end

#4. Mostrar todas las cartas que se crearon en el arreglo
mazo.each {|x| print "#{x.numero}#{x.pinta} "}