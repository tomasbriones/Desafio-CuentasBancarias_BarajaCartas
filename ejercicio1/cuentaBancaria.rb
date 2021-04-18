class CuentaBancaria

    attr_accessor :saldo
    attr_reader :nombreBanco, :numeroCuenta

    def initialize(nombreBanco,numeroCuenta,saldo=0)
        if saldo.is_a?(Interger)
            @nombreBanco = nombreBanco.to_s
            @numeroCuenta = numeroCuenta.to_s
            @saldo = saldo
        else
            raise ArgumentError.new("Saldo ingresado inválido")
        end
    end

    def transferir(monto,otraCuenta)
        self.saldo -= monto
        otraCuenta.saldo += monto
    end

end