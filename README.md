
arr\_func\_perm
==============

Take an array, apply a function to all possible combinations.


Install & Use
=============

Shell:

    npm install arr_func_perm

CoffeeScript:

    afp = require "arr_func_perm"
    
    my_arr = [ 0 , 0 , 0 ]

    my_arr.func_perm ( val, i ) -> 
      val + 1

    // returns
    [ [ 0, 0, 0 ],
      [ 0, 0, 1 ],
      [ 0, 1, 1 ], 
      [ 1, 1, 1 ], 
      [ 1, 1, 0 ], 
      [ 1, 0, 0 ],
      [ 0, 1, 0 ]
    ]
