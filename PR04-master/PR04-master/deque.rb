# Author:: Ferdinand Trendelenburg
# Author:: Thorben Schomacker

# objekt Deque und dessen methoden
class Deque
  def initialize(array)
    if (array.instance_of?(Array))
      @daten = array
    else
      raise ArgumentError, "Die Übergabe muss ein Array sein!"
    end

  end

  def daten
    @daten.clone
    # aus sicherheit wird hier ein clone von @daten
    # zurrückdedeben
  end

  def enqueue(element)

    if (element == "" || element == nil)
      return false
      raise ArgumentError, "element darf nicht leer oder nil sein"
    end

    @daten << element
    return self
    # Ich gebe nil zurück, weil ich nichts brauche
    # weil ich sonst die refferenz für @daten
    # zurrückgeben würde(sicherer)
  end

  def dequeue
    @daten.shift
    # dar delete ein Item oder nil zurückgibt
    # ist es nicht weiter tragisch
  end

  alias_method :push, :enqueue

  def pop
    @daten.pop
    # dar delete ein Item oder nil zurückgibt
    # ist es nicht weiter tragisch
  end

  def size
    @daten.length
  end

  def last
    @daten.last
  end

  def first
    @daten.first
  end

  def to_s
    "deque: "+@daten.to_s
  end

  def ==(objekt)
    if (objekt.instance_of?(Deque) && objekt.daten == @daten)
      return true
    else
      return false
      if (objekt.instance_of?(Deque))
      else
        raise ArgumentError, "Objekte sind nicht vom gleichen typ"
      end
      if (objekt.daten != @daten)
        raise ArgumentError, "Objekte besitzen nicht die gleichen daten"
      end
    end
  end
end