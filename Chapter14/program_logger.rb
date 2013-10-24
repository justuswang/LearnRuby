def logger description, &block
  puts "Beginning \"#{description}\"..."
  ret = block.call
  puts "...\"#{description}\" finished, returning: #{ret}"
end

logger "outer block" do
  logger "some little block" do
    5
  end
  logger "yet another block" do
    "I like Thai food!"
  end
  false
end
