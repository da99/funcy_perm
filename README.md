
funcy\_perm
==============

Take an array, apply a function to all possible combinations.


Install & Use
=============

Shell:

    npm install funcy_perm

CoffeeScript:

    funcy_perm = require "funcy_perm"
    
    my_arr = [ 0 , 0 , 0 ]

    funcy_perm(my_arr).perm ( val, i ) -> 
      val + 1

    // returns
    [ 
      [ 0, 0, 0 ],
      [ 0, 0, 1 ],
      [ 0, 1, 0 ],
      [ 0, 1, 1 ], 
      
      [ 1, 0, 0 ],
      [ 1, 0, 1 ], 
      [ 1, 1, 0 ], 
      [ 1, 1, 1 ]
    ]

Note
=====

An empty array returns, an array with an empty array. Example:

    funcy_perm([]).perm some_func

    // returns 
    [ [] ]
