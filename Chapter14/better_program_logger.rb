$DEPTH = 0
$PREFIX = '  '
def logger description, &block
  puts "#{$PREFIX * $DEPTH}Beginning \"#{description}\"..."
  $DEPTH += 1
  ret = block.call
  $DEPTH -= 1
  puts "#{$PREFIX * $DEPTH}...\"#{description}\" finished, returning: #{ret}"
end

logger "outer block" do
  logger "some little block" do
    logger "teeny-tiny block" do
      "lots of love"
    end
    42
  end
  logger "yet another block" do
    "I like Indian food!"
  end
  true
end
