class Neuron
  attr_accessor :threshold, :weights

  def initialize(weights = [], threshold = 0.3)
    @threshold = threshold
    @weights = weights
  end

  def output(input)
    total = 0
    input.length.times {|i| total+=input[i]*weights[i]}
    total > @threshold ? 1 : 0
  end

end