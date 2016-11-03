# Author:: Ferdinand Trendelenburg
# Author:: Thorben Schomacker

# Testet die mehthoden
require_relative './deque.rb'
require 'test/unit'

class Testen < Test::Unit::TestCase
  def setup()

    @deque = Deque.new(['1','2','3','4','5','6','7','8'])
    @g1 = '1'
    @g2 = 1.32547465634646836725623454868
    @g3 = '2'
    @g4 = '3'
    @g5 = '9'
    @g6 = '10'
    @g7 = '7'
    @g8 = '6'
    @g9 = ''
    @g10
    
    @deque1 = Deque.new([1, 2, 3])
    @deque2 = Deque.new([1, 2, 3])
    @deque3 = Deque.new([1, 2, 3, 4, 5, 6, 7, 8])

    @time = @deque.size
  end

  # teste obe die enqueue methode funktioniert
  def test_enqueue
    @deque.enqueue(@g1)
    assert_equal(@g1, @deque.last)
    @deque.enqueue(@g2)
    assert_equal(@g2, @deque.last)
  end

  # teste obe die dequeue methode funktioniert
  def test_dequeue
    @deque.dequeue()
    assert_equal(@g3, @deque.first)
    @deque.dequeue()
    assert_equal(@g4, @deque.first)
  end

  # teste obe die push methode funktioniert
  def test_push

    @deque.push(@g5)
    assert_equal(@g5, @deque.last)
    @deque.push(@g6)
    assert_equal(@g6, @deque.last)

  end

  # teste obe die pop methode funktioniert
  def test_pop

    @deque.pop()
    assert_equal(@g7, @deque.last)
    @deque.pop()
    assert_equal(@g8, @deque.last)

  end

  # teste was passeirt, wenn öfter das letzte element
  # gelöscht wird, als es elemente in dem Array gibt
  def test_alles_loeschen

    # mit times arbeiten
    @time.times{
      @deque.pop
    }
    @deque.push(@g1)
    assert_equal(@g1, @deque.first)

  end

  def test_gleichheit_positiv
    # assert_equal(true, @deque1 == @deque2)
    assert_equal(@deque1, @deque2)
    assert(@deque1 ==  @deque2)
  end

  def test_gleichheit_negativ
    assert_not_equal(true, @deque1 == @deque3)
    assert_not_equal(@deque1, @deque3)
    refute(@deque1 == @deque3)
  end

  def test_negativ

    @deque.push(@g9)
    assert_not_equal(@g9, @deque.last)
  end

  def test_negativ_initialize

    assert_raise ArgumentError do Deque.new("q") end
  end

  def test_positiv_initialize

    assert_nothing_raised ArgumentError do Deque.new([1, 2]) end
    
  end

end