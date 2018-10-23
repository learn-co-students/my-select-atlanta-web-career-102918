def my_select(collection)
 # your code here!
 if block_given? 
  i = 0
  new_collection = []

  while i < collection.length
    yield(collection[i]) ? new_collection << collection[i] : nil
    i = i + 1
  end

  new_collection
else
  puts "Hey! No block was given!"
end
end
