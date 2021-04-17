class CuentaBancaria

    attr_accessor :saldo
    attr_reader :nombreBanco, :numeroCuenta

    def initialize(nombreBanco,numeroCuenta,saldo=0)
        @nombreBanco = nombreBanco.to_s
        @numeroCuenta = numeroCuenta.to_s
        @saldo = saldo
    end

    def self.transferir(monto,otraCuenta)

    end

end