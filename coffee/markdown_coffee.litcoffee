# Coffeescript can be a markdown document

*Write Your Documentation and Code at the same time*


    # This will be compiled
    list = [ 1, 2, 3, 4, 5 ]

    objs = [
      {
        foo: "bar"
      }
      {
        foo: "baz"
      }
    ]


## How to get all the 'foo's?



# A js loop?

    #  foos = [];
    #  for(var i = 0; i < objs.length; i++) {
    #    // Either reassign or keep track of the index
    #    obj = objs[i];
    #
    #    foos.push(obj.foo);
    #  }
    #
    #  console.log(foos); //=> ["bar", "baz" ]

## Well that's a waste of effort.

# Aaaand the Coffeescript?

    # This?

    foos = obj.foo for obj in objs

    # Yes

    foos2 = (obj.foo for obj in objs)

    foos2 = say_hello(obj.foo) for obj in objs when obj.foo isnt "bar"

    # Use comprehensions everywhere where you would otherwise use a a loop
    # each/forEach, map, or select/filter

    # The only low-level loop coffescript provides is the while loop

# Ranges

    a = [ 1..10 ] # a is 1 thru 10, inclusive
    a = [ 1...10] # a is 1 thru 9, inclusive ... Wat?

# Classes

    class Hello

      constructor: (@args)->
        console.log @args


      dummy_hello: ->
        hello = @
        $.ajax "http://www.google.com",
          success: (data, textStatus, xhrObj)->
            console.log hello

      to_google: ->
        # Keep scope with the double arrow
        $.ajax "http://www.google.com",
          success: (data, textStatus, xhrObj)=>
            $.ajax "example.com",
              success: (data, textStatus, xhrObj)=>
                console.log @
                # @ is still the instance of Hello

    hey = new Hello()

    hey.dummy_hello()
    hey.to_google()

# Splats

    splat_me = (first, second, rest...)->
      console.log rest

# Ternaries

    # There are no such things. CoffeeScript sucks here.
    # Move along, people

    age = if 24 > 12 then "older" else "younger"

# Aliases

  is            === 
  isnt          !==
  not           !=
  and           &&
  or            ||
  true/yes/on   true
  false/no/off  false
  @, this       this
  of            in
  in            no js equivalent

# The existential operator ... confusion

    a = ""
    
    if a? #sometimes it check for null and undefined, other times just null
      a
      # do something with a

    # useful for chaining

    zip = lottery.drawWinner?().address?.zipcode

[www.coffeescript.org](http://www.coffeescript.org)



