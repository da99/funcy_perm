_ = require "underscore"
_.str = require "underscore.string"

num_to_arr = (num, pre) ->
  chars = ( _.str.sprintf("%0#{pre}d", parseInt(num.toString(2))) ).split('')
  ( Boolean(parseInt(c)) for c in chars )

table = (n) ->
  range = _.range(Math.pow(2, n) )
  ( num_to_arr(v, n) for v in range)
  

class Arr_Func_Perm
  
  constructor: (arr) ->
    @arr = arr
  
  perm: (func) ->
    total = @arr.length * @arr.length
    i = 0
    indexes = table(@arr.length)
      
    final = []
    for inds in indexes
      new_arr = (v for v in @arr)
      for apply, i in inds
        if apply
          new_arr[i] = func(new_arr[i])
      final.push new_arr
    final

module.exports = (arr) ->
  new Arr_Func_Perm(arr)
