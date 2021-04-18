require_relative 'cuentaBancaria'
require_relative 'usuario'

#---CASO PRUEBA TRANSFERIR CUENTA BANCARIA----

cuenta1 = CuentaBancaria.new('itau','1234',6000)
cuenta2 = CuentaBancaria.new('chile','5678',5000)
cuenta3 = CuentaBancaria.new('santander','4555667',20000)

#puts cuenta1.saldo,cuenta2.saldo
#cuenta1.transferir(5000,cuenta2)
#puts cuenta1.saldo,cuenta2.saldo

cuentast = [cuenta1,cuenta2]
cuentasd = [cuenta3]
usuario1 = Usuario.new('tomas',cuentast)
usuario2 = Usuario.new('diego',cuentasd)

puts "El saldo total de #{usuario1.nombre} es:\nSaldo total: $#{usuario1.saldo_total}\n"

puts "El saldo total de #{usuario2.nombre} es:\nSaldo total: $#{usuario2.saldo_total}\n"

puts "\e[1;34mrealizando tranferencia\e[m"
cuenta2.transferir(3500,cuenta3)
sleep 2
puts "\e[1;32mtransferencia exitosa!\e[m"

puts "El saldo total de #{usuario1.nombre} es:\nSaldo total: $#{usuario1.saldo_total}"

puts "El saldo total de #{usuario2.nombre} es:\nSaldo total: $#{usuario2.saldo_total}"

#el proceso puede quedar mas automatizado y se puede interactuar aun mas con el usuario. Agregando gets o ARGV segun sea correspondiente y ciclos. 