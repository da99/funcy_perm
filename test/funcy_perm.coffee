assert = require "assert"
funcy = require "funcy_perm"

sort = (arr) ->
  arr.sort (a, b) ->
    a.join(',') > b.join(',')
    
describe "funcy_perm", () ->

  describe ".perm", () ->

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


      
