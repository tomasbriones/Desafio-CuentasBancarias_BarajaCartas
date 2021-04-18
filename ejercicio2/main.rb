
require_relative 'carta'
require_relative 'baraja'

baraja = Baraja.new()
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}

baraja.barajar
puts "\nbajarando cartas"
sleep 1
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}
carta1 = baraja.sacar
puts "\n#{carta1.numero}#{carta1.pinta}"