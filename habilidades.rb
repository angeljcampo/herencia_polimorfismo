
module Habilidades
  module Volador

    def volar
      'Estoy volandooooo!'
    end
    
    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end

  module Nadador
    def nadar
      'Estoy nadando!'
    end
    def sumergir
      'glu glub glub glu'
    end
  end

  module Caminante
    def caminar
    'Puedo caminar!'
    end
  end
end

module Alimentacion
  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end

  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end

class Animal
  attr_reader :nombre
  include Habilidades
  include Alimentacion
  def initialize(nombre)
    @nombre = nombre
  end

end

class Ave < Animal
  include Volador, Herbivoro, Carnivoro
end

class Mamifero < Animal
  include Caminante,Herbivoro, Carnivoro
end

class Insecto < Animal
  include Volador, Caminante, Herbivoro
end

class Pinguino < Ave
  include Nadador, Caminante, Carnivoro
end

class Paloma < Ave
include Volador, Caminante, Herbivoro
end

class Pato < Ave
  include Volador, Caminante, Herbivoro
end

class Perro < Mamifero
  include Caminante, Carnivoro
end

class Gato < Mamifero
  include Caminante, Carnivoro
end

class Vaca < Mamifero
  include Caminante, Herbivoro
end

class Mosca < Insecto
  include Volador, Herbivoro
end

class Mariposa < Insecto
  include Volador, Herbivoro
end

class Abeja < Insecto
include Volador, Herbivoro
end

