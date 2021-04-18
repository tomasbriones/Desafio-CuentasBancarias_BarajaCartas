
require_relative 'carta'
require_relative 'baraja'

baraja = Baraja.new()
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}

#metodo que baraja las cartas
baraja.barajar
puts "\n\e[1;35mbajarando cartas\e[m"
sleep 1
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}

#metodo que saca una carta de la baraja
carta1 = baraja.sacar
puts "\n\e[1;35mCarta sacada: \e[m#{carta1.numero}#{carta1.pinta}"
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}

#muestro las cartas repartidas y actualizo mostrando la baraja, a modo de debug
mano = baraja.repartir
puts "\n\e[1;35mRepartiendo cartas\e[m"
mano.each {|x| print "#{x.numero}#{x.pinta} "}
puts "\n\e[1;35mbaraja\e[m"
baraja.cartas.each {|x| print "#{x.numero}#{x.pinta} "}