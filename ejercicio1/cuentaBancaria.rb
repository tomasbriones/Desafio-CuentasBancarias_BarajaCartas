class CuentaBancaria
    
    attr_accessor :saldo
    attr_reader :nombreBanco, :numeroCuenta

    def initialize(nombreBanco,numeroCuenta,saldo=0)
        @nombreBanco = nombreBanco
        @numeroCuenta = numeroCuenta
        @saldo = saldo
    end
end