assert = require "assert"
funcy = require "arr_func_perm"

sort = (arr) ->
  arr.sort (a, b) ->
    a.join(',') > b.join(',')
    
describe "arr_func_perm", () ->

  describe ".func_perm", () ->

    it "returns all possible combinations of applying a function", () ->

      my_arr = [ 0 , 0 , 0 ]

      results = funcy(my_arr).perm ( val, i ) -> 
        val + 1

      target = [ 
        [ 0, 0, 0 ],
        [ 0, 0, 1 ],
        [ 0, 1, 0 ], 
        [ 0, 1, 1 ], 
        [ 1, 0, 0 ], 
        [ 1, 0, 1 ],
        [ 1, 1, 0 ],
        [ 1, 1, 1 ]
      ]

      assert.deepEqual sort(results), sort(target)


      
