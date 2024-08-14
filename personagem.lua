local function Personagem(nome, lv)
    return {
        nome = nome,
        vida = lv * 60,
        mana = lv * 60,
        stamina = lv * 60,
        atacar = function (self)
            print("atacando")
            self.stamina = self.stamina - 10
        end,
        andando = function (self)
            print("andando")
            self.stamina = self.stamina - 5
        end,
    }
end


return Personagem