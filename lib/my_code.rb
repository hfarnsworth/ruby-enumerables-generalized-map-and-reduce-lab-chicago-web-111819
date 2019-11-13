# Your Code Here
def map(array)
  index = 0 
  newArray = []
  
  while index < array.length do 
    transform = yield(array[index])
    newArray << transform
    index += 1 
  end
    
    newArray
end

def reduce(array, starting_point = 0)
  
  index = 0 
  n = starting_point
  while index < array.length do 
    memo = array[index]
    if memo
      if memo.is_a? Integer 
        n += memo
      else
        n = nil
        memo = true
      end
    else
      memo = false
    end
    index += 1 
  end
  
  yield(memo,n)
  n
end
