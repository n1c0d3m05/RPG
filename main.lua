local Personagem = require("personagem")

local function Mago(nome, lv)
    local mago = Personagem(nome, lv)
    mago.mana = mago.mana + 10

    mago.magia = function (self)
        print("atirando magia")
        self.mana = self.mana - 5
    end

    mago.curar = function (self)
        print("curando")
        self.vida = self.vida + 10
        self.mana = self.mana - 5
    end

    return mago
end

local function Guerreiro(nome, lv)
    local guerreiro = Personagem(nome, lv)
    guerreiro.stamina = guerreiro.stamina + 10
    guerreiro.pocao = 1 
    guerreiro.dinheiro = 600


    guerreiro.UsarPocao = function (self)
        print("curando")
        self.vida = self.vida + 10
        self.pocao = self.pocao - 1
    end

    guerreiro.ComprarPocao = function (self)
        print("comprando")
        self.pocao = self.pocao + 1
        self.dinheiro = self.dinheiro - 20
    end

    return guerreiro
end

local mago = Mago("tobias", 5)
local guerreiro = Guerreiro("jorge", 7)



