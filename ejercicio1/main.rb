require_relative 'cuentaBancaria'

#---CASO PRUEBA TRANSFERIR CUENTA BANCARIA----

cuenta1 = CuentaBancaria.new('itau','1234',5000)
cuenta2 = CuentaBancaria.new('chile','5678',5000)

puts cuenta1.saldo,cuenta2.saldo
cuenta1.transferir(5000,cuenta2)
puts cuenta1.saldo,cuenta2.saldo