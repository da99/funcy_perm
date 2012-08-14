_ = require "underscore"
_.str = require "underscore.string"

num_to_arr = (num, pre) ->
  chars = ( _.str.sprintf("%0#{pre}d", parseInt(num.toString(2))) ).split('')
  ( Boolean(parseInt(c)) for c in chars )

table = (n) ->
  range = _.range(Math.pow(2, n) )
  ( num_to_arr(v, n) for v in range)
  
Array.prototype.func_perm = (func) ->
  total = this.length * this.length
  i = 0
  indexes = table(this.length)
    
  final = []
  for inds in indexes
    new_arr = (v for v in this)
    for apply, i in inds
      if apply
        new_arr[i] = func(new_arr[i])
    final.push new_arr
  final


