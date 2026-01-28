(def things
  @{
"++"
````````
(comment

  (do
    (var i 0)
    (++ i)
    i)
  # =>
  1

  (do
    (var i -1)
    (++ i))
  # =>
  0

  (do
    (var i math/inf)
    (++ i))
  # =>
  math/inf

  (do
    (var i math/-inf)
    (++ i))
  # =>
  math/-inf

  (do
    (var i math/nan)
    (++ i)
    (nan? i))
  # =>
  true

  )
````````
"+"
````````
(comment

  (+ 1 2)
  # =>
  3

  (+ 10)
  # =>
  10

  (+)
  # =>
  0

  (+ 1.4 -4.5)
  # =>
  -3.1

  (+ 1 2 3 4 5 6 7 8 9 10)
  # =>
  55

  (+ ;(range 101))
  # =>
  5050

  (= (+ (int/s64 "10") 10)
     20:s)
  # =>
  true

  (def [ok? value] (protect (+ nil 10)))
  # =>
  [false "could not find method :+ for nil"]

  )
````````
"+="
````````
(comment

  (do
    (var i 0)
    (+= i 2)
    i)
  # =>
  2

  (do
    (var i 1)
    (+= i -1)
    i)
  # =>
  0

  (do
    (var j 0)
    (+= j math/nan)
    (nan? j))
  # =>
  true

  (do
    (var k 0)
    (+= k math/inf)
    k)
  # =>
  math/inf

  )
````````
"--"
````````
(comment

  (do
    (var i 0)
    (-- i)
    i)
  # =>
  -1

  (do
    (var i 1)
    (-- i))
  # =>
  0

  (do
    (var i math/inf)
    (-- i))
  # =>
  math/inf

  (do
    (var i math/-inf)
    (-- i))
  # =>
  math/-inf

  (do
    (var i math/nan)
    (-- i)
    (nan? i))
  # =>
  true

  )
````````
"-"
````````
(comment

  (- 1 2)
  # =>
  -1

  (- 10)
  # =>
  -10

  (-)
  # =>
  0

  (- 1.4 -4.5)
  # =>
  5.9

  (- 1 2 3 4 5 6 7 8 9 10)
  # =>
  -53

  (= (- (int/s64 "10") 10)
     0:s)
  # =>
  true

  )
````````
"-="
````````
(comment

  (do
    (var i 3)
    (-= i 2)
    i)
  # =>
  1

  (do
    (var i 1)
    (-= i -1)
    i)
  # =>
  2

  (do
    (var j 0)
    (-= j math/nan)
    (nan? j))
  # =>
  true

  (do
    (var k 0)
    (-= k math/inf)
    k)
  # =>
  math/-inf

  )
````````
"_all-the-things"
````````
#
# Special Forms
#   (break value?)
#   (def name meta... value)
#   (do body...)
#   (fn name? args body...)
#   (if condition when-true when-false?)
#   (quasiquote x)
#   (quote x)
#   (set l-value r-value)
#   (splice x)
#   (unquote x)
#   (upscope & body)
#   (var name meta... value)
#   (while condition body...)
#
# Functions
#   %
#   *
#   +
#   -
#   /
#   accumulate
#   accumulate2
#   all
#   apply
#   array?
#   array/concat
#   asm
#   boolean?
#   buffer?
#   bytes?
#   cfunction?
#   comp
#   compare
#   complement
#   count
#   dec
#   dictionary?
#   drop
#   drop-until
#   drop-while
#   empty?
#   eval-string
#   eval
#   even?
#   extreme
#   fiber?
#   filter
#   find
#   find-index
#   first
#   function?
#   has-key?
#   has-value?
#   identity
#   inc
#   index-of
#   indexed?
#   interpose
#   juxt*
#   keep
#   keyword?
#   last
#   map
#   mapcat
#   max
#   max-of
#   mean
#   min
#   min-of
#   nan?
#   neg?
#   number?
#   odd?
#   one?
#   os/strftime
#   pos?
#   product
#   range
#   reduce
#   reverse
#   slice
#   some
#   sort
#   sort-by
#   sorted
#   string/split
#   string/trim
#   string/triml
#   string/trimr
#   string?
#   struct?
#   sum
#   symbol?
#   table?
#   take
#   take-until
#   take-while
#   tuple?
#   type
#   zero?
#
# Macros
#   %=
#   *=
#   ++
#   +=
#   --
#   -=
#   /=
#   and
#   assert
#   case
#   chr
#   comment
#   cond
#   coro
#   default
#   defdyn
#   defer
#   defn
#   each
#   eachk
#   eachp
#   edefer
#   errorf
#   for
#   forever
#   forv
#   generate
#   if-let
#   if-not
#   if-with
#   juxt
#   label
#   let
#   loop
#   or
#   prompt
#   protect
#   repeat
#   return
#   seq
#   short-fn
#   tabseq
#   toggle
#   try
#   unless
#   when
#   when-let
#   when-with
#   with
#   with-syms
#
# Variables
#   default-peg-grammar
#
# Dynamic Variables
#   *out*
````````
"*"
````````
(comment

  (* 10 20)
  # =>
  200

  (* 10)
  # =>
  10

  (*)
  # =>
  1

  (* 1 2 3 4 5 6 7)
  # =>
  5040

  (* ;(range 1 20))
  # =>
  1.21645100408832e+17

  )
````````
"*="
````````
(comment

  (do
    (var i 0.5)
    (*= i 2)
    i)
  # =>
  1

  (do
    (var i 1)
    (*= i -1)
    i)
  # =>
  -1

  (do
    (var j 0)
    (*= j math/nan)
    (nan? j))
  # =>
  true

  (do
    (var k 0)
    (*= k math/inf)
    (nan? k))
  # =>
  true

  )
````````
"*out*"
````````
(comment

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (print "greetings"))
    buf)
  # =>
  @"greetings\n"

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (prin "not quote done"))
    buf)
  # =>
  @"not quote done"

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (printf "...and then %s" `another`))
    buf)
  # =>
  @"...and then another\n"

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (prinf "hello %s" `dave`))
    buf)
  # =>
  @"hello dave"

  )
````````
"%"
````````
(comment

  (% 10 3)
  # =>
  1
  
  (% -10 3)
  # =>
  -1
  
  (% 10 -3)
  # =>
  1
  
  (% -10 -3)
  # =>
  -1
  
  (= (% 1.4 1) 
     (- 1.4 1))
  # =>
  true
  
  (= (% -1.4 1)
     (+ -1.4 1))
  # =>
  true
  
  (= (% 1.4 -1)
     (- 1.4 1))
  # =>
  true
  
  (= (% -1.4 -1)
     (+ -1.4 1))
  # =>
  true
  
  (nan? (% 1.4 0))
  # =>
  true
  
  (nan? (% -1.4 0))
  # =>
  true
  
  )
````````
"%="
````````
(comment

  (do
    (var i 3)
    (%= i 2)
    i)
  # =>
  1

  (do
    (var i 17)
    (%= i -7)
    i)
  # =>
  3

  (do
    (var j 1024)
    (%= j math/nan)
    (nan? j))
  # =>
  true

  (do
    (var k 2048)
    (%= k math/inf)
    k)
  # =>
  2048

  )
````````
"/"
````````
(comment

  (/ 10 5)
  # =>
  2

  (/ 10)
  # =>
  0.1

  (/)
  # =>
  1

  (/ 10 5 4)
  # =>
  0.5

  (/ 10 5 4 5)
  # =>
  0.1

  # More arguments is the same as repeated division.
  (= (/ ;(range 1 20))
     (/ 1 2 3 4 5 6 7 8 9 10
        11 12 13 14 15 16 17 18 19))
  # =>
  true

  )
````````
"/="
````````
(comment

  (do
    (var i 1)
    (/= i 2)
    i)
  # =>
  0.5

  (do
    (var i 1)
    (/= i -1)
    i)
  # =>
  -1

  (do
    (var j 0)
    (/= j math/nan)
    (nan? j))
  # =>
  true

  (do
    (var k 0)
    (/= k math/inf)
    k)
  # =>
  0

  )
````````
"accumulate"
````````
(comment

  (accumulate + 0 [1 2 3])
  # =>
  @[1 3 6]

  (accumulate (fn [x y]
                (if (not (empty? x))
                  (string x ", " y)
                  y))
              ""
              [:ant :bee :cheetah])
  # =>
  @[:ant "ant, bee" "ant, bee, cheetah"]

  (accumulate nil nil [])
  # =>
  @[]

  (accumulate nil :garuda [])
  # =>
  @[]

  )
````````
"accumulate2"
````````
(comment

  (accumulate2 + [1 2 3 4])
  # =>
  @[1 3 6 10]

  (accumulate2 + [])
  # =>
  @[]

  (accumulate2 max [1 4 2 3 9 5])
  # =>
  @[1 4 4 4 9 9]

  )
````````
"all"
````````
(comment

  (all pos? [1 2 3])
  # =>
  true

  (all (fn [x y] (pos? (* x y))) 
       [-1 2] [-2 1])
  # =>
  true

  (all |(neg? (+ $0 $1 $2)) 
       [-2 2] [1 -8] [0 1 43])
  # =>
  true

  (all pos? [1 2 -3])
  # =>
  false

  (all pos? [])
  # =>
  true

  (all neg? [])
  # =>
  true

  (all truthy? [1 2 3])
  # =>
  true

  (all truthy? [1 2 nil])
  # =>
  false

  )
````````
"and"
````````
(comment

  (and)
  # =>
  true

  (and 1)
  # =>
  1

  (and 1 nil)
  # =>
  nil

  (and 1 (/ 2 1) false)
  # =>
  false

  (and :fun :play (not true) :dance)
  # =>
  false

  )
````````
"apply"
````````
(comment

  (apply + (range 10))
  # =>
  45

  (apply + [])
  # =>
  0

  (apply + 1 2 3 4 5 6 7 [8 9 10])
  # =>
  55

  (def [ok? value] (protect (apply + 1 2 3 4 5 6 7 8 9 10)))
  # =>
  [false "expected array or tuple, got 10"]

  (let [mx (apply for 'x 0 10 ['(print x)])]
    (and (= (length mx) 4)
         (= (get mx 0) 'do)
         (= (get-in mx [1 0]) 'var)
         (= (get-in mx [2 0]) 'def)
         (= (get-in mx [3 0]) 'while)))
  # =>
  true

  )
````````
"array?"
````````
(comment

  (array? @[:a :b])
  # =>
  true

  (array? @(:x :y :z))
  # =>
  true

  (array? (accumulate + 0 [0 1 2]))
  # =>
  true

  (array? (accumulate2 + [0 1 2]))
  # =>
  true

  (array? (debug/arg-stack (fiber/current)))
  # =>
  true

  (array? (debug/lineage (fiber/root)))
  # =>
  true

  (array? (debug/stack (fiber/current)))
  # =>
  true

  (array? (disasm (fn [] :dolphin) :bytecode))
  # =>
  true

  (array? (disasm (fn [] :dolphin) :constants))
  # =>
  true

  (array? (distinct [1 1 2 2]))
  # =>
  true

  (array? (ev/gather (coro 1) (coro 2)))
  # =>
  true

  (array? (filter odd? [-1 0 1]))
  # =>
  true

  (array? (flatten [:x [:y {:z 1}]]))
  # =>
  true

  (array? (flatten-into @[] [:x [:y {:z 1}]]))
  # =>
  true

  (array? (interleave [1 2 3] [:one :two :three]))
  # =>
  true

  (array? (interpose "," [:a :b :c]))
  # =>
  true

  (array? (keep |(when (odd? $)
                   (string $))
                [1 2 3]))
  # =>
  true

  (array? (kvs {:a 1 :b 2}))
  # =>
  true

  (array? (map inc [-2 -1 0]))
  # =>
  true

  (array? (mapcat sum [[1 8] [2 7] [0 9]]))
  # =>
  true

  (array? (os/dir "."))
  # =>
  true

  (array? (partition 2 [0 1 2 3]))
  # =>
  true

  (array? (partition-by even? [0 1 2 3 7 8 9]))
  # =>
  true

  (array? (peg/find-all "a" "abba"))
  # =>
  true

  (array? (peg/match '(sequence (thru ".")) "hello there."))
  # =>
  true

  (array? (peg/match '(sequence (thru ".")) "hello there?"))
  # =>
  false

  (array? (put @[] 0 1))
  # =>
  true

  (array? (put-in @[@[]] [0 0] :treasure))
  # =>
  true

  (array? (range 0 3))
  # =>
  true

  (array? (reverse @[0 1 2]))
  # =>
  true

  (array? (reverse! @[math/pi math/e]))
  # =>
  true

  (array? (seq [i :in [0 1 2]] i))
  # =>
  true

  (array? (sorted @[3 math/pi math/e]))
  # =>
  true

  (array? (sorted-by math/abs @[-2 1 2 -1 0]))
  # =>
  true

  (array? (string/find-all "/" "/usr/local/src"))
  # =>
  true

  (array? (string/split "/" "/usr/local/src"))
  # =>
  true

  (array? (take 2 (coro
                    (yield :alice)
                    (yield :bob))))
  # =>
  true

  (array? (take-until even?
                      (coro
                        (yield 1)
                        (yield 2))))
  # =>
  true

  (array? (take-while even?
                      (coro
                        (yield 2)
                        (yield 8)
                        (yield 9))))
  # =>
  true

  (array? [])
  # =>
  false

  (array? '())
  # =>
  false

  )
````````
"array/concat"
````````
(comment

  (do
    (def arr @[])
    (array/concat arr @[:a])
    arr)
  # =>
  @[:a]

  (do
    (def arr @[])
    (array/concat arr [:a :b])
    arr)
  # =>
  @[:a :b]

  (do
    (def arr @[])
    (array/concat arr :a)
    arr)
  # =>
  @[:a]

  (do
    (def arr @[])
    (array/concat arr :a :b)
    arr)
  # =>
  @[:a :b]

  (do
    (def arr @[])
    (array/concat arr :a @[:x] [:y])
    arr)
  # =>
  @[:a :x :y]

  (do
    (def arr @[])
    (array/concat arr [[:x] :y])
    arr)
  # =>
  @[[:x] :y]

  )
````````
"asm"
````````
(comment

  (do
    (def code
      '{:bytecode @[(ldi 1 0x2)  # $1 = 2
                    (mul 2 0 1)  # $2 = $0 * $1
                    (ret 2)]     # return $2
        :arity 1})               # arg 0 is $0
    (def double
      (asm code))
    (double 3))
  # =>
  6

  (do
    (def code
      '{:bytecode @[(ldi 1 0x1)  # $1 = 1
                    (add 2 0 1)  # $2 = $0 + $1
                    (ret 2)]     # return $2
        :arity 1})               # arg 0 is $0
    (def my-inc
      (asm code))
    (my-inc 7))
  # =>
  8

  (do
    (def code
      # janet/test/suite-asm.janet
      '{:bytecode @[(ltim 1 0 0x2)    # $1 = $0 < 2
                    (jmpif 1 :done)   # if ($1) goto :done
                    (lds 1)           # $1 = self
                    (addim 0 0 -0x1)  # $0 = $0 - 1
                    (push 0)          # push($0), for next func call
                    (call 2 1)        # $2 = call($1)
                    (addim 0 0 -0x1)  # $0 = $0 - 1
                    (push 0)          # push($0)
                    (call 0 1)        # $0 = call($1)
                    (add 0 0 2)       # $0 = $0 + $2
                    :done
                    (ret 0)]          # return $0
        :arity 1})
    (def fib
      (asm code))
    (fib 6))
  # =>
  8

  # add: $dest = $lhs + $rhs
  ((asm '{:bytecode @[(add 2 0 1)  # $2 = $0 + $1
                      (ret 2)]     # return $2
          :arity 2})               # args 0 and 1 are $0 and $1
    1 2)
  # =>
  3

  # addim: $dest = $lhs + im
  ((asm '{:bytecode @[(addim 1 0 0x1)  # $1 = $0 + 1
                      (ret 1)]         # return $1
          :arity 1})                   # arg 0 is $0
    7)
  # =>
  8

  # band: $dest = $lhs & $rhs
  ((asm '{:bytecode @[(band 0 0 1)
                      (ret 0)]
          :arity 2})
    2r101 2r111)
  # =>
  2r101

  # bnot: $dest = ~$operand
  ((asm '{:bytecode @[(bnot 0 0)
                      (ret 0)]
          :arity 1})
    2r101)
  # =>
  (- (inc 2r101))

  # bor: $dest = $lhs | $rhs
  ((asm '{:bytecode @[(bor 0 0 1)
                      (ret 0)]
          :arity 2})
    2r11110000 2r00001111)
  # =>
  2r11111111

  # bxor: $dest = $lhs ^ $rhs
  ((asm '{:bytecode @[(bxor 0 0 1)
                      (ret 0)]
          :arity 2})
    2r00110011 2r00001111)
  # =>
  2r00111100

  # call: $dest = call($callee, args)
  ((asm ~{:constants [,type]
          :bytecode @[(push 0)
                      (ldc 1 0)
                      (call 0 1)
                      (ret 0)]
          :arity 1})
    :smile)
  # =>
  :keyword

  # clo: $dest = closure(defs[$index])
  ((asm ~{:defs @[,(disasm (asm '{:arity 1
                                  :bytecode @[(addim 1 0 0x8)
                                              (ret 1)]}))]
          :bytecode @[(push 0)
                      (clo 0 0)
                      (call 1 0)
                      (ret 1)]
          :arity 1})
    3)
  # =>
  11

  # cmp: $dest = janet_compare($lhs, $rhs)
  ((asm ~{:bytecode @[(cmp 2 0 1)
                      (ret 2)]
          :arity 2})
    -11 22)
  # =>
  -1

  # cncl: resume $fiber, but raise $error immediately
  (try
    ((asm ~{:bytecode @[(cncl 2 0 1)
                        (ret 2)]
            :arity 2})
      (coro 1) "Oops!")
    ([e]
      (string "Ah..." e)))
  # =>
  "Ah...Oops!"

  # div: $dest = $lhs / $rhs
  ((asm ~{:bytecode @[(div 2 0 1)
                      (ret 2)]
          :arity 2})
    1 0)
  # =>
  math/inf

  # divim: $dest = $lhs / im
  ((asm ~{:bytecode @[(divim 2 0 0x2)
                      (ret 2)]
          :arity 1})
    1)
  # =>
  0.5

  # eq: $dest = $lhs == $rhs
  ((asm ~{:bytecode @[(eq 2 0 1)
                      (ret 2)]
          :arity 2})
    1 0)
  # =>
  false

  # eqim: $dest = $lhs == im
  ((asm ~{:bytecode @[(eqim 2 0 0x1)
                      (ret 2)]
          :arity 1})
    1)
  # =>
  true

  # err: throw $error
  (try
    ((asm ~{:bytecode @[(err 0)]
            :arity 1})
      "at you!")
    ([e]
      (string "Have " e)))
  # =>
  "Have at you!"

  # get: $dest = $ds[$key]
  ((asm ~{:bytecode @[(get 2 0 1)  # (get dest ds key)
                      (ret 2)]
          :arity 2})
    {:a 1} :a)
  # =>
  1

  # geti: $dest = $ds[index]
  ((asm ~{:bytecode @[(geti 2 0 0x2)  # (geti dest ds index)
                      (ret 2)]
          :arity 1})
    [0 1 8])
  # =>
  8

  # gt: $dest = $lhs > $rhs
  ((asm ~{:bytecode @[(gt 2 0 1)
                      (ret 2)]
          :arity 2})
    0 88)
  # =>
  false

  # gte: $dest = $lhs >= $rhs
  ((asm ~{:bytecode @[(gte 2 0 1)
                      (ret 2)]
          :arity 2})
    88 88)
  # =>
  true

  # gtim: $dest = $lhs > im
  ((asm ~{:bytecode @[(gtim 1 0 0x57)
                      (ret 1)]
          :arity 1})
    88)
  # =>
  true

  # in: $dest = $ds[$key] using `in`
  ((asm ~{:bytecode @[(in 2 0 1)
                      (ret 2)]
          :arity 2})
    {:x :spot} :x)
  # =>
  :spot

  # jmp: pc += offset
  ((asm ~{:bytecode @[(jmp 3)
                      (ldi 0 0x8)
                      (ret 0)
                      (ldi 0 0x9)
                      (ret 0)]
          :arity 0}))
  # =>
  9

  # jpmif: if $cond pc += offset else pc++
  ((asm ~{:bytecode @[(jmpif 0 2)
                      (ret 1)
                      (ret 2)]
          :arity 3})
    true :ant :bee)
  # =>
  :bee

  # jmpni: if $cond == nil pc += offset else pc++
  ((asm ~{:bytecode @[(jmpni 0 2)
                      (ret 1)
                      (ret 2)]
          :arity 3})
    true :ant :bee)
  # =>
  :ant

  # jmpnn: if $cond != nil pc += offset else pc++
  ((asm ~{:bytecode @[(jmpnn 0 2)
                      (ret 1)
                      (ret 2)]
          :arity 3})
    true :ant :bee)
  # =>
  :bee

  # jmpno: if $cond pc++ else pc += offset
  ((asm ~{:bytecode @[(jmpno 0 2)
                      (ret 1)
                      (ret 2)]
          :arity 3})
    true :ant :bee)
  # =>
  :ant

  # ldc: $dest = constants[index]
  ((asm ~{:constants [:grin]
          :bytecode @[(ldc 0 0)
                      (ret 0)]
          :arity 0}))
  # =>
  :grin

  # ldf: $dest = false
  ((asm ~{:bytecode @[(ldf 0)
                      (ret 0)]
          :arity 0}))
  # =>
  false

  # ldi: $dest = integer
  ((asm ~{:bytecode @[(ldi 0 0x100)
                      (ret 0)]
          :arity 0}))
  # =>
  256

  # ldn: $dest = nil
  ((asm ~{:bytecode @[(ldn 0)
                      (ret 0)]
          :arity 0}))
  # =>
  nil

  # factorial with accumulator
  # lds: $dest = current closure (self)
  ((asm ~{:bytecode @[(ltim 2 0 0x2)
                      (jmpif 2 :end)
                      (lds 2)
                      (mul 1 0 1)
                      (addim 0 0 -0x1)
                      (push2 0 1)
                      (call 1 2)
                      :end
                      (ret 1)]
          :arity 2})
    5 1)
  # =>
  120

  # ldt: $dest = true
  ((asm ~{:bytecode @[(ldt 0)
                      (ret 0)]
          :arity 0}))
  # =>
  true

  # ldu: $dest = envs[env][index]
  ((asm '{:arity 1
          :bytecode @[(clo 1 0)             # $1 = defs[0]
                      (ldi 2 0x8)           # $2 = 8
                      (push 2)              # push $2 to args
                      (call 2 1)            # $2 = ($1 $2) == (defs[0] $2)
                      (ret 2)]              # return $2
          :defs @[{:arity 1
                   :bytecode @[(ldu 1 0 0)  # $1 = $0 from parent?
                               (add 2 1 0)  # $2 = $1 + $0
                               (ret 2)]     # return $2
                   :environments @[-1]}]})  # (ldu _ 0 _) refers to -1
    3)
  # =>
  11

  # len: $dest = length($ds)
  ((asm ~{:bytecode @[(len 0 0)
                      (ret 0)]
          :arity 1})
    [:ant :bee :cat])
  # =>
  3

  # lt: $dest = $lhs < $rhs
  ((asm ~{:bytecode @[(lt 0 0 1)
                      (ret 0)]
          :arity 2})
    math/-inf math/inf)
  # =>
  true

  # lte: $dest = $lhs <= $rhs
  ((asm ~{:bytecode @[(lte 0 0 1)
                      (ret 0)]
          :arity 2})
    0 1)
  # =>
  true

  # ltim: $dest = $lhs < im
  ((asm ~{:bytecode @[(ltim 0 0 0x1)
                      (ret 0)]
          :arity 1})
    0)
  # =>
  true

  # mkarr: $dest = call(array, args)
  ((asm ~{:bytecode @[(push3 0 1 2)
                      (mkarr 0)
                      (ret 0)]
          :arity 3})
    :elephant :fox :giraffe)
  # =>
  @[:elephant :fox :giraffe]

  # mkbtp: $dest = call(tuple/brackets, args)
  ((asm ~{:bytecode @[(push2 0 1)
                      (mkbtp 0)
                      (ret 0)]
          :arity 2})
    [] {})
  # =>
  '[() {}]

  # mkbuf: $dest = call(buffer, args)
  ((asm ~{:bytecode @[(push2 0 1)
                      (mkbuf 0)
                      (ret 0)]
          :arity 2})
    :hi " there")
  # =>
  @"hi there"

  # mkstr: $dest = call(string, args)
  ((asm ~{:bytecode @[(push2 0 1)
                      (mkstr 0)
                      (ret 0)]
          :arity 2})
    @"gday, m" 8)
  # =>
  "gday, m8"

  # mkstu: $dest = call(struct, args)
  ((asm ~{:bytecode @[(push3 0 1 2)
                      (push3 3 4 5)
                      (mkstu 0)
                      (ret 0)]
          :arity 6})
    :x 10 :y 20 :z 80)
  # =>
  {:x 10 :y 20 :z 80}

  # mktab: $dest = call(table, args)
  ((asm ~{:bytecode @[(push2 0 1)
                      (mktab 0)
                      (ret 0)]
          :arity 2})
    :breathe :slowly)
  # =>
  @{:breathe :slowly}

  # mktup: $dest = call(tuple, args)
  ((asm ~{:bytecode @[(push3 0 1 2)
                      (mktup 0)
                      (ret 0)]
          :arity 3})
    '+ 1 1)
  # =>
  '(+ 1 1)

  # mod: $dest = $lhs mod $rhs
  ((asm ~{:bytecode @[(mod 0 0 1)
                      (ret 0)]
          :arity 2})
    -3 2)
  # =>
  1

  # movf: $dest = $src
  ((asm ~{:bytecode @[(movf 0 1)  # (movf src dest)
                      (ret 1)]
          :arity 1})
    :echo)
  # =>
  :echo

  # movn: $dest = $src
  ((asm ~{:bytecode @[(movn 1 0)  # (movn dest src)
                      (ret 1)]
          :arity 1})
    :again)
  # =>
  :again

  # mul: $dest = $lhs * $rhs
  ((asm ~{:bytecode @[(mul 2 0 1)
                      (ret 2)]
          :arity 2})
    2 3)
  # =>
  6

  # mulim: $dest = $lhs * im
  ((asm ~{:bytecode @[(mulim 1 0 0x8)
                      (ret 1)]
          :arity 1})
    11)
  # =>
  88

  # neq: dest = $lhs != $rhs
  ((asm ~{:bytecode @[(neq 2 0 1)
                      (ret 2)]
          :arity 2})
    0 -0)
  # =>
  false

  # neqim: $dest = $lhs != im
  ((asm ~{:bytecode @[(neqim 2 0 0x23)
                      (ret 2)]
          :arity 1})
    22)
  # =>
  true

  # next: $dest = next($ds, $key)
  ((asm ~{:bytecode @[(next 2 0 1)
                      (ret 2)]
          :arity 2})
    [:a :b :c] 1)
  # =>
  2

  # noop: does nothing
  ((asm ~{:bytecode @[(noop)
                      (noop)
                      (noop)
                      (noop)
                      (noop)
                      (noop)
                      (noop)
                      (noop)
                      (ret 0)]
          :arity 1})
    math/inf)
  # =>
  math/inf

  # prop: propagate (re-raise) a signal that has been caught
  (do
    (def fib (coro :a))
    (resume fib)
    ((asm ~{:bytecode @[(prop 2 0 1)  # (prop dest val fiber)
                        (ldi 0 0x9)   # never reached
                        (ret 0)]
            :arity 2})
      "skip!" fib))
  # =>
  "skip!"

  # put: $ds[$key] = $val
  ((asm ~{:bytecode @[(put 0 1 2)  # (put ds key val)
                      (ret 0)]
          :arity 3})
    @{} :a 1)
  # =>
  @{:a 1}

  # puti: $ds[index] = $val
  ((asm ~{:bytecode @[(puti 0 1 0x0)  # (puti ds val index)
                      (ret 0)]
          :arity 2})
    @[] :smile)
  # =>
  @[:smile]

  # rem: $dest = $lhs % $rhs
  ((asm ~{:bytecode @[(rem 2 0 1)
                      (ret 2)]
          :arity 2})
    -3 2)
  # =>
  -1

  # res: $dest = resume $fiber with $val
  ((asm ~{:bytecode @[(res 2 0 1)
                      (ret 2)]
          :arity 2})
    (fiber/new (fn [x] (* x 8)))
    9)
  # =>
  72

  # ret: return $val
  ((asm ~{:bytecode @[(ret 0)]
          :arity 1})
    :love)
  # =>
  :love

  # retn: return nil
  ((asm ~{:bytecode @[(retn)]
          :arity 0}))
  # =>
  nil

  # setu: envs[env][index] = $val
  ((asm '{:arity 0
          :bytecode @[(clo 0 0)                 # define the closure
                      (ldi 1 0x8)               # prepare $1 for closure
                      (call 2 0)                # calling for side-effect
                      (ret 1)]                  # returned modified value
          :defs @[{:arity 0
                   :bytecode @[(ldu 0 0 1)      # $0 = parent's $1
                               (addim 0 0 0x1)  # increment $0
                               (setu 0 0 1)     # parent's $1 = $0
                               (retn)]          # caller ignores this
                   :environments @[-1]}]}))
  # =>
  (+ 0x8 0x1)

  # enum JanetSignal, JANET_SIGNAL_ERROR is 1
  # sig: $dest = emit $value as sigtype
  (try
    ((asm ~{:bytecode @[(sig 2 0 0x1)  # (sig dest value sigtype)
                        (ldi 1 0xff)   # never reached
                        (ret 1)]
            :arity 1})
      :wocky)
    ([e]
      (string "jabber" e)))
  # =>
  "jabberwocky"

  # sl: $dest = $lhs << $rhs
  ((asm ~{:bytecode @[(sl 2 0 1)
                      (ret 2)]
          :arity 2})
    2r10 3)
  # =>
  16

  # slim: $dest = $lhs << shamt
  ((asm ~{:bytecode @[(slim 1 0 0x3)
                      (ret 1)]
          :arity 1})
    2r10)
  # =>
  16

  # sr: $dest = $lhs >> $rhs
  ((asm ~{:bytecode @[(sr 2 0 1)
                      (ret 2)]
          :arity 2})
    -2r101 2)
  # =>
  -2

  # srim: $dest = $lhs >> shamt
  ((asm ~{:bytecode @[(srim 1 0 0x2)
                      (ret 1)]
          :arity 1})
    -2r101)
  # =>
  -2

  # sru: $dest = $lhs >>> $rhs
  ((asm ~{:bytecode @[(sru 2 0 1)
                      (ret 2)]
          :arity 2})
    2r1100 3)
  # =>
  1

  # sruim: $dest = $lhs >>> shamt
  ((asm ~{:bytecode @[(sruim 1 0 0x3)
                      (ret 1)]
          :arity 1})
    2r1100)
  # =>
  1

  # sub: $dest = $lhs - $rhs
  ((asm ~{:bytecode @[(sub 2 0 1)
                      (ret 2)]
          :arity 2})
    0 1)
  # =>
  -1

  # tcall: return call($callee, args)
  ((asm ~{:bytecode @[(tcall 0)]
          :arity 1})
    +)
  # =>
  0

  # enum JanetType, JANET_KEYWORD is 6, 2 ** 6 == 64
  # tchck: assert $slot matches types
  ((asm ~{:bytecode @[(tchck 0 64)
                      (ret 0)]
          :arity 1})
    :hello)
  # =>
  :hello

  )
````````
"assert"
````````
(comment

  (try
    (assert (= true false))
    ([e]
      :caught))
  # =>
  :caught

  (try
    (assert (= true false)
            "Sorry, no contradictions allowed")
    ([e]
      :caught-2-arg-version))
  # =>
  :caught-2-arg-version

  (assert (= true true)
          "At least some level of consistency")
  # =>
  true

  )
````````
"boolean?"
````````
(comment

  (boolean? true)
  # =>
  true

  (boolean? false)
  # =>
  true

  (boolean? nil)
  # =>
  false

  (boolean? 0)
  # =>
  false

  (boolean? (< 0 1))
  # =>
  true

  (boolean? (<= 2 1))
  # =>
  true

  (boolean? (= math/pi math/e))
  # =>
  true

  (boolean? (> math/inf math/-inf))
  # =>
  true

  (boolean? (>= 0 0))
  # =>
  true

  (boolean? (abstract? nil))
  # =>
  true

  (boolean? (all even? [0 2 8]))
  # =>
  true

  (boolean? (all |(when (even? $))
                 [0 3 8]))
  # =>
  false

  (boolean? (and true false))
  # =>
  true

  (boolean? (and true nil))
  # =>
  false

  (boolean? (any? [true nil]))
  # =>
  true

  (boolean? (any? [nil]))
  # =>
  false

  (boolean? (array? @[]))
  # =>
  true

  (boolean? (array? :a))
  # =>
  true

  (boolean? (buffer/bit @"1" 0))
  # =>
  true

  (boolean? (buffer/bit @"1" 1))
  # =>
  true

  (boolean? (buffer? @""))
  # =>
  true

  (boolean? (bytes? []))
  # =>
  true

  (boolean? (cfunction? :a))
  # =>
  true

  (boolean? (compare< 1 2))
  # =>
  true

  (boolean? (compare<= -1 -2))
  # =>
  true

  (boolean? (compare= 0 0.0))
  # =>
  true

  (boolean? (compare> -0 1))
  # =>
  true

  (boolean? (compare>= math/-inf math/inf))
  # =>
  true

  (boolean? (deep-not= [:a] [:b]))
  # =>
  true

  (boolean? (deep= [:a] [:b]))
  # =>
  true

  (boolean? (dictionary? "hello"))
  # =>
  true

  (boolean? (disasm (fn [] 9) :vararg))
  # =>
  true

  (boolean? (empty? :smile))
  # =>
  true

  (boolean? (even? math/nan))
  # =>
  true

  (boolean? (false? false))
  # =>
  true

  (boolean? (false? true))
  # =>
  true

  (boolean? (fiber/can-resume? (coro 1)))
  # =>
  true

  (boolean? (fiber? (coro :breathe)))
  # =>
  true

  (boolean? (function? map))
  # =>
  true

  (boolean? (idempotent? false))
  # =>
  true

  (boolean? (keyword? 'fun))
  # =>
  true

  (boolean? (nan? 0))
  # =>
  true

  (boolean? (nat? math/nan))
  # =>
  true

  (boolean? (neg? math/inf))
  # =>
  true

  (boolean? (nil? 1))
  # =>
  true

  (boolean? (not 1))
  # =>
  true

  (boolean? (not= 0.0 0))
  # =>
  true

  (boolean? (number? "hi"))
  # =>
  true

  (boolean? (odd? 2))
  # =>
  true

  (boolean? (one? 1.1))
  # =>
  true

  (boolean? (parse "true"))
  # =>
  true

  (boolean? (parse "nil"))
  # =>
  false

  (boolean? (pos? -3))
  # =>
  true

  (boolean? (string/check-set "abcdr " "abra cadabra"))
  # =>
  true

  (boolean? (string/has-prefix? "/" "/tmp"))
  # =>
  true

  (boolean? (string/has-suffix? ".txt" "README.txt"))
  # =>
  true

  (boolean? (string? "my my"))
  # =>
  true

  (boolean? (struct? {:ant :zebra}))
  # =>
  true

  (boolean? (symbol? :a-keyword))
  # =>
  true

  (boolean? (table? @{:x 1080 :y 720}))
  # =>
  true

  (boolean? (do
              (var x nil)
              (toggle x)))
  # =>
  true

  (boolean? (true? false))
  # =>
  true

  (boolean? (truthy? nil))
  # =>
  true

  (boolean? (tuple? @[:an :array]))
  # =>
  true

  (boolean? (zero? 0.1))
  # =>
  true

  )
````````
"break"
````````
```
special form

`(break value?)`

Break from a `while` loop or return early from a function.

The `break` special form can only break from the inner-most loop.

Since a `while` loop always returns `nil`, the optional value
parameter has no effect when used in a `while` loop, but when
returning from a function, the value parameter is the function's
return value.

The `break` special form is most useful as a low level construct for
macros. You should try to avoid using it in handwritten code, although
it can be very useful for handling early exit conditions without
requiring deeply indented code (try the `cond` macro first, though).

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (while true
    (break))
  # =>
  nil

  (do
    (def arr @[])
    (for i 0 2
      (array/push arr i)
      (when (pos? i)
        (break)))
    arr)
  # =>
  @[0 1]

  (do
    (var tot 0)
    (each i [-1 0 1]
      (+= tot i)
      (when (zero? i)
        (break)))
    tot)
  # =>
  -1

  (do
    (var r nil)
    (for i 0 2
      (for j 0 2
        (when (and (pos? i) (pos? j))
          (break)))
      (set r i))
    r)
  # =>
  1

  (do
    (defn a-fn
      []
      (when (> (math/random) 0.5)
        (break 1))
      (when (> (math/random) 0.5)
        (break 2))
      3)
    (get {1 true 2 true 3 true}
         (a-fn)))
  # =>
  true

  )
````````
"buffer?"
````````
(comment

  (buffer? @"hello")
  # =>
  true

  (buffer?
    @``
     even long-buffers
     are buffers
     ``)
  # =>
  true

  (buffer? "")
  # =>
  false

  (buffer? (buffer "hi"))
  # =>
  true

  )
````````
"bytes?"
````````
(comment

  (bytes? "a-string")
  # =>
  true

  (bytes? 'a-symbol)
  # =>
  true

  (bytes? :a-keyword)
  # =>
  true

  (bytes? @"a-buffer")
  # =>
  true

  (bytes? nil)
  # =>
  false

  (bytes? math/nan)
  # =>
  false

  (bytes? [:a :b :c])
  # =>
  false

  )
````````
"case"
````````
(comment

  (case (+ 1 2)
    1
    :nope
    #
    2
    :try-again
    #
    3
    :yay!)
  # =>
  :yay!

  (case :fun)
  # =>
  nil

  (case :odd-trivial
    :highlander)
  # =>
  :highlander

  (case :odd-for-real
    3.1415926535
    :approximate
    #
    2.71828
    :still-not-quite
    #
    0)
  # =>
  0

  )
````````
"cfunction?"
````````
(comment

  (cfunction? getline)
  # =>
  true

  (cfunction? inc)
  # =>
  false

  [(cfunction? print) (function? print)]
  # =>
  [true false]

  )
````````
"chr"
````````
(comment

  (chr "a")
  # =>
  97

  (chr "\0")
  # =>
  0

  (chr "\e")
  # =>
  27

  (chr "\v")
  # =>
  11

  )
````````
"comment"
````````
(comment

  (comment "a fine string")
  # =>
  nil

  (comment

    (def a 1)

    a

    )
  # =>
  nil

  )
````````
"comp"
````````
(comment

  (do
    (def g inc)
    (def f |(math/pow $ 2))
    (def h (comp g f))
    (h 3))
  # =>
  10

  ((comp inc |(math/pow $ 2))
    3)
  # =>
  10

  (do
    (def g inc)
    (def f dec)
    (def h (comp g f))
    (h 42))
  # =>
  42

  ((comp inc dec)
    42)
  # =>
  42

  ((comp (fn g [xs]
           (map inc xs))
         (fn f [xs]
           (map |(math/pow $ 3) xs)))
    [0 1 2])
  # =>
  @[1 2 9]

  )
````````
"compare"
````````
(comment

  (do
    (defn a-cmp
      [x y]
      (let [x-val (get x :value)
            y-val (get y :value)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (compare {:compare a-cmp :value 1}
             {:compare a-cmp :value 2}))
  # =>
  -1

  (do
    (defn a-cmp
      [x y]
      (let [x-val (get x :value)
            y-val (get y :value)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (compare {:compare a-cmp :value 1}
             {:compare a-cmp :value 1}))
  # =>
  0

  (do
    (defn a-cmp
      [x y]
      (let [x-val (get x :value)
            y-val (get y :value)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (compare {:compare a-cmp :value 1}
             {:value 2}))
  # =>
  -1

  (do
    (defn a-cmp
      [x y]
      (let [x-val (get x :value)
            y-val (get y :value)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (compare {:value 1}
             {:compare a-cmp :value 2}))
  # =>
  -1

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (compare 1
             {:compare a-cmp :value 2}))
  # =>
  -1

  (compare -1 1)
  # =>
  -1

  )
````````
"complement"
````````
(comment

  (do
    (def f (complement pos?))
    (f 1))
  # =>
  false

  (do
    (def f (complement zero?))
    (f 1))
  # =>
  true

  ((complement even?) 1)
  # =>
  true

  )
````````
"cond"
````````
(comment

  (cond
    true
    :hi)
  # =>
  :hi

  (cond
    false
    :not-reached
    #
    true
    :hello)
  # =>
  :hello

  (cond
    :why)
  # =>
  :why

  (cond
    (= 1 2)
    :not-today
    #
    (= 2 3)
    :not-ever
    #
    :because)
  # =>
  :because

  (cond
    false
    :not-returned)
  # =>
  nil

  )
````````
"coro"
````````
(comment

  (do
    (def fib
      (coro
        (for i 0 3
          (yield i))))
    (resume fib)
    [(resume fib) (resume fib)])
  # =>
  [1 2]

  (do
    (var j 0)
    (def fib
      (coro
        (for i 1 5
          (yield (+ j i)))))
    [(resume fib)
     (set j 6)
     (resume fib) (resume fib)])
  # =>
  [1 6 8 9]

  (do
    (def fib-1
      (coro
        (yield :a)))
    (def fib-2
      (coro
        (yield fib-1)))
    (->> fib-2
         resume
         resume))
  # =>
  :a

  (do
    (var f1 nil)
    (var f2 nil)
    (set f1
      (coro
        (yield :a)
        (yield (resume f2))))
    (set f2
      (coro
        (yield :b)
        (yield (resume f1))))
    [(resume f1) (resume f1)])
  # =>
  [:a :b]

  (do
    (def to-f1 @[:your :to :be])
    (def to-f2 @[nil :drink :sure])
    (def to-f3 @[])
    (def f1
      (coro
        (forever
          (def msg (array/pop to-f1))
          (array/push to-f3 msg)
          (yield true))))
    (def f2
      (coro
        (forever
          (def msg (array/pop to-f2))
          (array/push to-f3 msg)
          (yield true))))
    (resume f1)
    (resume f2)
    (resume f1)
    (resume f2)
    (resume f1)
    (resume f2)
    to-f3)
  # =>
  @[:be :sure :to :drink :your nil]

  )
````````
"count"
````````
(comment

  (count number? [1 :a "hello" [0 1 2] 0])
  # =>
  2

  (count (fn [x y] (neg? (+ x y)))
         [-1 -1 -1] [-1 0 1])
  # =>
  2

  (count |(pos? (* $0 $1 $2))
         [-3 -2] [-1 0 99] [3 2])
  # =>
  1

  (count even? [2r111 0x08 8r11 10])
  # =>
  2

  (count (fn [x]
            (>= x (math/pow x 2)))
         [0 0.5 1 2 6 8 math/inf])
  # =>
  4

  (count nil [])
  # =>
  0

  (count pos? [math/-inf -1 0 1 math/pi])
  # =>
  2

  (count pos?
          (coro
            (for i -3 3
              (yield i))))
  # =>
  2

  (->> [0 1 2 3 7 8 9]
       (map |(math/pow $ 2))
       (count odd?))
  # =>
  4

  )
````````
"dec"
````````
(comment

  (do
    (def i 0)
    (dec i))
  # =>
  -1

  )
````````
"def"
````````
```
special form

`(def name meta... value)`

`def` binds a value to a symbol.

The symbol can be substituted for the value in subsequent expressions
for the same result.

A binding made by `def` is a constant and cannot be updated.  A symbol
can be redefined to a new value, but previous uses of the binding will
refer to the previous value of the binding.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do
    (def a 1)
    a)
  # =>
  1

  (do
    (def a 1)
    (def a 2)
    a)
  # =>
  2

  (do
    (def a 1)
    (do
      (def a 2))
    a)
  # =>
  1

  (do
    (def [a b]
      [1 2])
    a)
  # =>
  1

  (do
    (def [x y & rest]
      [1 2 3 8 9])
    rest)
  # =>
  '(3 8 9)

  (do
    (def {:a a
          :b b}
      (table :a 1
             :b 2))
    b)
  # =>
  2

  )
````````
"default-peg-grammar"
````````
(comment

  (table? default-peg-grammar)
  # =>
  true

  (>= (length default-peg-grammar) 20)
  # =>
  true

  (default-peg-grammar :s)
  # =>
  '(set " \t\r\n\0\f\v")

  (default-peg-grammar :s+)
  # =>
  '(some :s)

  (default-peg-grammar :s*)
  # =>
  '(any :s)

  (default-peg-grammar :S)
  # =>
  '(if-not :s 1)

  (default-peg-grammar :j)
  # =>
  nil

  )
````````
"default"
````````
(comment

  (do
    (defn a-fn
      [&opt arg]
      (default arg 2)
      (+ arg 1))

    (a-fn))
  # =>
  3

  (do
    (defn a-fn
      [&opt arg]
      (default arg 2)
      (+ arg 1))

    (a-fn 7))
  # =>
  8

  (do
    (defn a-fn
      [arg]
      (default arg 2)
      (+ arg 1))

    (a-fn nil))
  # =>
  3

  (do
    (defn a-fn
      [arg]
      (default arg 2)
      (+ arg 1))

    (a-fn 8))
  # =>
  9

  )
````````
"defdyn"
````````
(comment

  (do
    (defdyn *special-flag*
      "A special flag for ...")
    (setdyn *special-flag* (math/random))
    (= (dyn :special-flag)
       (dyn *special-flag*)))
  # =>
  true

  )
````````
"defer"
````````
(comment

  (do
    (var state nil)
    (defer (set state :altered)
      (for i 0 2
        (inc i)))
    state)
  # =>
  :altered

  (do
    (var box nil)
    (try
      (defer (set box :hope)
        (for i 0 3
          (when (pos? i)
            (error "must have goofed up somewhere..."))))
      ([e]
        box)))
  # =>
  :hope

  )
````````
"defglobal"
````````
(comment

  (do
    (defn my-fn
      []
      (defglobal 'a 1))

    (my-fn)

    # note: after the enclosing `do`, `a` will evaluate to 1
    ((dyn 'a) :value))
  # =>
  1

  )
````````
"defn"
````````
(comment

  (do
    (defn my-fn
      [x]
      (+ x 1))

    (my-fn 2))
  # =>
  3

  (do
    (defn my-documented-fn
      "What a nice doc-string..."
      [x]
      (+ x 11))

    (my-documented-fn 0))
  # =>
  11

  (do
    (defn outer-fn
      [x]
      (defn inner-fn
        [y]
        (+ x y))

      (inner-fn 1))

    (outer-fn 2))
  # =>
  3

  )
````````
"dictionary?"
````````
(comment

  (dictionary? {:animal "penguin"
                :drink "green tea"})
  # =>
  true

  (dictionary? @{:x 640 :y 480})
  # =>
  true

  (dictionary? (from-pairs [:color "yellow"
                            :shape "star"]))
  # =>
  true

  (dictionary? (freeze @{:x 1080 :y 720}))
  # =>
  true

  (dictionary? (struct/to-table {:a 1 :b 2}))
  # =>
  true

  (dictionary? (table/to-struct @{:a 1 :b 2}))
  # =>
  true

  (dictionary?
    (tabseq [i :range-to [0 3]]
      i (math/pow i 3)))
  # =>
  true

  (dictionary? nil)
  # =>
  false

  (dictionary? @[])
  # =>
  false

  (dictionary? [])
  # =>
  false

  )
````````
"distinct"
````````
(comment

  (distinct @[1 2 3 2 1])
  # =>
  @[1 2 3]

  (distinct "bookkeeper")
  # =>
  @[98 111 107 101 112 114]

  (distinct :hello)
  # =>
  @[104 101 108 111]

  (sort (map string/from-bytes
             (distinct "bookkeeper")))
  # =>
  @["b" "e" "k" "o" "p" "r"]

  )
````````
"do"
````````
```
special form

`(do body...)`

Execute a series of forms for side effects and evaluates to the final
form.

Also introduces a new lexical scope without creating or calling a
function.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do)
  # =>
  nil

  (do
    true)
  # =>
  true

  (do
    (print "hi")
    (+ 1 1))
  # =>
  2

  (do
    (do
      :fun))
  # =>
  :fun

  (do
    (def a 1)
    a)
  # =>
  1

  (do
    (def a 1)
    (do
      (def a 2))
    a)
  # =>
  1

  )
````````
"drop-until"
````````
(comment

  (drop-until even? [1 2 3])
  # =>
  [2 3]

  (drop-until |(number? (scan-number $))
              ["2r111" "0x08" "8r11" "10"])
  # =>
  ["2r111" "0x08" "8r11" "10"]

  (drop-until odd? "hi")
  # =>
  "i"

  (drop-until even? :smilet)
  # =>
  "let"

  (drop-until nil [])
  # =>
  []

  )
````````
"drop-while"
````````
(comment

  (drop-while even? [1 2 3])
  # =>
  [1 2 3]

  (drop-while |(number? (scan-number $))
              ["2r111" "0x08" "8r11" "10"])
  # =>
  []

  (drop-while odd? "aaaaatract")
  # =>
  "tract"

  (drop-while even? ":foo!")
  # =>
  "oo!"

  (drop-while nil [])
  # =>
  []

  )
````````
"drop"
````````
(comment

  (drop 2 [:ant :bee :cheetah])
  # =>
  [:cheetah]

  (drop -2 [0 1 2])
  # =>
  [0]

  (drop 2 "spice")
  # =>
  "ice"

  (drop 0 :oops)
  # =>
  "oops"

  (drop -1 :oops)
  # =>
  "oop"

  (drop -1 'print)
  # =>
  "prin"

  (drop 0 @[0 1 2])
  # =>
  [0 1 2]

  (drop 0 [])
  # =>
  []

  (drop 1 [])
  # =>
  []

  )
````````
"each"
````````
(comment

  (each i [])
  # =>
  nil

  (let [arr @[]
        tup [:a :b :c]]
    (each elt tup
      (array/push arr elt))
    arr)
  # =>
  @[:a :b :c]

  (do
    (def arr @[])
    (each v {:a 2 :e 6}
      (array/push arr v))
    (sort arr))
  # =>
  @[2 6]

  (do
    (def tbl @{})
    (def tup [:a :b :c])
    (each elt tup
      (put tbl elt true))
    tbl)
  # =>
  @{:a true :b true :c true}

  (do
    (def buf @"")
    (def zoo [:ant :bee :cat])
    (each animal zoo
      (when (= animal :cat)
        (break))
      (buffer/push buf animal "!"))
    buf)
  # =>
  @"ant!bee!"

  )
````````
"eachk"
````````
(comment

  (do
    (def arr @[])
    (def a-struct {:a 1 :b 2})
    (eachk k a-struct
      (array/push arr (get a-struct k)))
    (sort arr))
  # =>
  @[1 2]

  (let [arr @[]
        tbl @{:x 1 :y 2 :z 3}]
    (eachk k tbl
      (when (= k :z) (break))
      (array/push arr k))
    (not= (length arr) (length tbl)))
  # =>
  true

  )
````````
"eachp"
````````
(comment

  (let [arr @[]]
    (eachp [k v] {:ant 1 :bee 2}
      (array/push arr [k v]))
    (sort arr))
  # =>
  @[[:ant 1] [:bee 2]]

  (let [two-legs @[]
        six-legs @[]
        wings @[]]
    (eachp [k v] {:ant :insect :bee :insect :magpie :bird}
      (cond
        (= v :insect) (array/push six-legs k)
        (= v :bird) (array/push two-legs k))
      (when (or (= k :bee) (= k :magpie))
        (array/push wings k)))
    (map sort [two-legs six-legs wings]))
  # =>
  @[@[:magpie]
    @[:ant :bee]
    @[:bee :magpie]]

  )
````````
"edefer"
````````
(comment

  (do
    (var state :untouched)
    (edefer (set state :altered)
      (for i 0 2
        (inc i)))
    state)
  # =>
  :untouched

  (do
    (var box nil)
    (try
      (edefer (set box :errored)
        (for i 0 3
          (when (pos? i)
            (error "must have goofed up somewhere..."))))
      ([e]
        box)))
  # =>
  :errored

  )
````````
"empty?"
````````
(comment

  (empty? [])
  # =>
  true

  (empty? @{})
  # =>
  true

  (empty? "")
  # =>
  true

  (empty? [1])
  # =>
  false

  (empty? @[])
  # =>
  true

  (def [ok? value] (protect (empty? 0)))
  # =>
  [false "expected iterable type, got 0"]

  )
````````
"errorf"
````````
(comment

  (try
    (errorf "%s" "captured")
    ([e]
      e))
  # =>
  "captured"

  )
````````
"eval-string"
````````
(comment

  (eval-string "(+ 1 2 3 4)")
  # =>
  10

  (def [ok? value]
    (-> (eval-string ")")
        protect))
  # =>
  [false "unexpected closing delimiter )"]

  (def [ok? value]
    (-> (eval-string "(bloop)")
        protect))
  # =>
  [false "unknown symbol bloop"]

  (def [ok? value]
    (-> (eval-string "(+ nil nil)")
        protect))
  # =>
  [false "could not find method :+ for nil or :r+ for nil"]

  )
````````
"eval"
````````
(comment

  (eval '(+ 1 2 3)) 
  # =>
  6

  (def [ok? value] 
    (-> (eval '(error :oops))
        protect))
  # =>
  [false :oops]

  (def [ok? value] 
    (-> (eval '(+ nil nil))
        protect))
  # =>
  [false "could not find method :+ for nil or :r+ for nil"]

  )
````````
"even?"
````````
(comment

  (even? 0)
  # =>
  true

  (even? 1)
  # =>
  false

  (even? 2.0)
  # =>
  true

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (defn a-mod
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (mod x-val y-val)))
    (even? {:compare a-cmp :mod a-mod :value 2}))
  # =>
  true

  )
````````
"extreme"
````````
(comment

  (extreme < [1 0 -1])
  # =>
  -1

  (extreme > [-1 0 1])
  # =>
  1

  (extreme (fn [x y]
             (> (math/pow x 3) (math/pow y 3)))
           [-1 -0.5 0 0.3 0.6])
  # =>
  0.6

  (extreme < [])
  # =>
  nil

  (extreme > [math/int32-max math/inf])
  # =>
  math/inf

  (extreme > [math/int32-max math/inf nil])
  # =>
  nil

  )
````````
"fiber?"
````````
(comment

  (fiber? (coro
            (for i 0 3
              (yield i))))
  # =>
  true

  (fiber? (ev/cancel (ev/spawn
                       (for i 0 2
                         (yield i)))
                     "fiber cancelled"))
  # =>
  true

  (fiber? (fiber/new (fn [] 1)))
  # =>
  true

  (fiber? (fiber-fn :yi
                    (yield :smile)))
  # =>
  true

  (fiber? (fiber/current))
  # =>
  true

  (try
    (error "oops")
    ([e f]
      (fiber? f)))
  # =>
  true

  )
````````
"filter"
````````
(comment

  (filter pos? [1 2 3 0 -4 5 6])
  # =>
  @[1 2 3 5 6]

  (filter |(> (length $) 3)
          ["hello" "goodbye" "hi"])
  # =>
  @["hello" "goodbye"]

  (filter |(< (chr "A") $) "foo01bar")
  # =>
  @[102 111 111 98 97 114]

  (filter number? [1 :a "hello" [0 1 2] 0])
  # =>
  @[1 0]

  (filter even? [2r111 0x08 8r11 10])
  # =>
  @[8 10]

  (filter (fn [x]
            (>= x (math/pow x 2)))
          [0 0.5 1 2 6 8 math/inf])
  # =>
  @[0 0.5 1 math/inf]

  (filter nil [])
  # =>
  @[]

  (string/from-bytes ;(filter |(< (chr "A") $) "foo01bar"))
  # =>
  "foobar"

  (filter pos?
          (coro
            (for i -3 3
              (yield i))))
  # =>
  @[1 2]

  (->> [0 1 2 3 7 8 9]
       (map |(math/pow $ 2))
       (filter odd?)
       (map math/sqrt))
  # =>
  @[1 3 7 9]

  )
````````
"find-index"
````````
(comment

  (find-index number? [1 2 3])
  # =>
  0

  (find-index string? [0 1 "2r111"])
  # =>
  2

  (find-index keyword?
              [0 "fun" [:x :y] {:a 1}]
              :nothing-here)
  # =>
  :nothing-here

  (find-index (fn gachou [x]
                (= x :goose))
              [:duck :duck :duck :goose])
  # =>
  3

  )
````````
"find"
````````
(comment

  (find number? [1 2 3])
  # =>
  1

  (find string? [0 1 "2r111"])
  # =>
  "2r111"

  (find keyword?
        [0 "fun" [:x :y] {:a 1}]
        :nothing-here)
  # =>
  :nothing-here

  (find (fn gachou [x]
          (= x :goose))
        [:duck :duck :duck :goose])
  # =>
  :goose

  )
````````
"first"
````````
(comment

  (first [:a :b :c])
  # =>
  :a

  (first [])
  # =>
  nil

  (first @[0 1 2])
  # =>
  0

  (first {:a 1 :b 2})
  # =>
  nil

  (first "hello")
  # =>
  (chr "h")

  (first nil)
  # =>
  nil

  (first :hooooo)
  # =>
  (chr "h")

  (first 32767)
  # =>
  nil

  )
````````
"fn"
````````
```
special form

`(fn name? args body...)`

Compile a function literal (closure).

A function literal consists of an optional `name`, an argument list,
and a function `body`.

The optional `name` is allowed so that functions can more easily be
recursive.

The argument list is a tuple of named parameters, and `body` is 0 or
more forms.

The function will evaluate to the last form in `body`. The other forms
will only be evaluated for side effects.

Functions also introduce a new lexical scope, meaning the defs and
vars inside a function `body` will not escape outside the `body`.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (function? (fn [] 1))
  # =>
  true

  ((fn [] 1))
  # =>
  1

  ((fn [x] x) ((fn [] 1)))
  # =>
  1

  (do
    (def a
      (fn [] 8))
    (a))
  # =>
  8

  (do
    (def a 9)

    (def b
      (fn [] a))

    (b))
  # =>
  9

  (do
    (def my-caller
      (fn [f]
        (f)))
    (my-caller (fn [] :fun)))
  # =>
  :fun

  )

(comment

  (do
    (var n 3)
    (var b nil)
    (def stack @[])

    (def a
      (fn []
        (if (pos? n)
          (do
            (array/push stack (keyword (string "a-" n)))
            (set n (dec n))
            (b))
          (array/push stack :a-done))))

    (set b
         (fn []
           (if (pos? n)
             (do
               (array/push stack (keyword (string "b-" n)))
               (set n (dec n))
               (a))
             (array/push stack :b-done))))

    (a)

    stack)
  # =>
  @[:a-3 :b-2 :a-1 :b-done]

  )
````````
"for"
````````
(comment

  (do
    (def arr @[])
    (for i 0 7
      (array/push arr (math/pow i 2)))
    arr)
  # =>
  @[0 1 4 9 16 25 36]

  (do
    (def arr @[])
    (for i 0 3
      (for j 0 3
        (array/push arr [i j])))
    arr)
  # =>
  '@[(0 0) (0 1) (0 2)
     (1 0) (1 1) (1 2)
     (2 0) (2 1) (2 2)]

  )
````````
"forever"
````````
(comment

  (do
    (var i 0)
    (forever
      (when (pos? i)
        (break))
      (++ i))
    i)
  # =>
  1

  )
````````
"forv"
````````
(comment

  (do
    (def coll @[])
    (forv i 0 9
      (array/push coll i)
      (+= i 2))
    coll)
  # =>
  @[0 3 6]

  (do
    (def coll @[])
    (forv i 0 9
      (array/push coll i)
      (*= i -2))
    coll)
  # =>
  @[0 1 -1 3 -5]


  )
````````
"function?"
````````
(comment

  (function? inc)
  # =>
  true

  (function? (fn [] :hi))
  # =>
  true

  (function? |(/ $ 3))
  # =>
  true

  (function? |[$ :tagged])
  # =>
  true

  (function? (partial + 2))
  # =>
  true

  (function? (juxt zero? one? even? odd? nan?))
  # =>
  true

  (and (function? defn)
       ((dyn 'defn) :macro))
  # =>
  true

  [(function? print) (cfunction? print)]
  # =>
  [false true]

  (function? (compile '(+ 1 1)))
  # =>
  true

  )
````````
"generate"
````````
(comment

  (do
    (var tot 3)
    (def fib
      (generate [i :iterate (when (pos? (-- tot)) tot)]
        (math/pow i 3)))
    [(resume fib) (resume fib)])
  # =>
  [8 1]

  (do
    (def fib
      (generate [i :range [0 4]]
        (math/pow i 2)))
    (resume fib)
    @[(resume fib)
      (resume fib)
      (resume fib)])
  # =>
  @[1 4 9]

  (do
    (def fib
      (generate [i :range [0 4 2]]
        (* -1 i)))
    (resume fib)
    (resume fib))
  # =>
  -2

  (do
    (def fib
      (generate [i :range-to [8 12]]
        i))
    (resume fib)
    (filter even? fib))
  # =>
  @[10 12]

  (do
    (def fib
      (generate [i :range-to [8 12 2]]
        i))
    (resume fib)
    (resume fib))
  # =>
  10

  (do
    (def fib
      (generate [j :down [10 0]]
        j))
    (resume fib)
    (resume fib)
    (resume fib))
  # =>
  8

  (do
    (def fib
      (generate [j :down [10 0 2]]
        j))
    (resume fib)
    (resume fib))
  # =>
  8

  (do
    (def fib
      (generate [j :down-to [3 -3]]
        j))
    (resume fib)
    (resume fib))
  # =>
  2

  (do
    (def fib
      (generate [j :down-to [3 -3 3]]
        j))
    (resume fib)
    (resume fib))
  # =>
  0

  (do
    (def fib
      (generate [k :keys {:a 1 :b 2}]
        (keyword (string/ascii-upper k))))
    (sort @[(resume fib) (resume fib)]))
  # =>
  @[:A :B]

  (do
    (def fib
      (generate [[k v] :pairs {:a 1 :b 2}]
        [v k]))
    (table ;(resume fib) ;(resume fib)))
  # =>
  @{1 :a
    2 :b}

  (do
    (def fib
      (generate [i :in [0 1 2]]
        (math/pow i 3)))
    (resume fib)
    [(resume fib) (resume fib)])
  # =>
  [1 8]

  (do
    (def fib
      (generate [i :in (fiber/new
                         |(each x (range 3)
                            (yield x)))]
        (math/pow i 3)))
    (resume fib)
    (+ (resume fib) (resume fib)))
  # =>
  9

  (do
    (def fib
      (generate [i :range [-3 3 0.5]
                 :while (not (pos? i))]
        (math/pow i 2)))
    (resume fib)
    [(resume fib) (+ (resume fib) (resume fib))])
  # =>
  [6.25 6.25]

  (do
    (def fib
      (generate [i :range [-3 3 0.5]
                 :until (pos? i)]
        (math/pow i 2)))
    (resume fib)
    [(resume fib) (+ (resume fib) (resume fib))])
  # =>
  [6.25 6.25]

  (do
    (def fib
      (generate [i :range [0 6]
                 :let [c (math/pow i 3)]]
        c))
    (resume fib)
    (+ (resume fib) (resume fib)
       (* 0 (resume fib))
       (resume fib)))
  # =>
  73

  (do
    (def buf @"")
    (def fib
      (generate [i :range [0 3]
                 :before (buffer/push-string buf "!")]
        (string buf)))
    (def [head _ tail]
      [(resume fib) (resume fib) (resume fib)])
    [head tail])
  # =>
  ["!" "!!!"]

  (do
    (def buf @"")
    (def fib
      (generate [i :range [0 3]
                 :after (buffer/push-string buf "!")]
        (string buf)))
    (def [head _ tail]
      [(resume fib) (resume fib) (resume fib)])
    [head tail])
  # =>
  ["" "!!"]

  (do
    (def fib
      (generate [i :range-to [1 3]
                 :repeat i]
        i))
    (repeat 4
      (resume fib))
    (resume fib))
  # =>
  3

  )
````````
"has-key?"
````````
(comment

  (has-key? @{:key1 "foo" :key2 "bar"} :key1)
  # =>
  true

  (has-key? "a" 0)
  # =>
  true

  (has-key? ["a" "b" "c"] 1)
  # =>
  true

  (has-key? @{} 0)
  # =>
  false

  (has-key? @{:key1 "foo" :key2 "bar"} :key3)
  # =>
  false

  (has-key? {} 0)
  # =>
  false

  (has-key? {:key1 "foo" :key2 "bar"} :key1)
  # =>
  true

  (has-key? {:key1 "foo" :key2 "bar"} :key3)
  # =>
  false

  (has-key? "" 0)
  # =>
  false

  (has-key? "a" 1)
  # =>
  false

  (has-key? [] 0)
  # =>
  false

  (has-key? ["a" "b" "c"] 4)
  # =>
  false

  (has-key? @[] 0)
  # =>
  false

  (has-key? @["a" "b" "c"] 1)
  # =>
  true

  (has-key? @["a" "b" "c"] 4)
  # =>
  false

  )
````````
"has-value?"
````````
(comment

  (has-value? @{:key1 "foo" :key2 "bar"} "foo")
  # =>
  true

  (has-value? "abc" 97)
  # =>
  true

  (has-value? ["a" "b" "c"] "a")
  # =>
  true

  (has-value? @{} 0)
  # =>
  false

  (has-value? @{:key1 "foo" :key2 "bar"} "hello")
  # =>
  false

  (has-value? @{:key1 "foo" :key2 "bar"} nil)
  # =>
  false

  (has-value? {} 0)
  # =>
  false

  (has-value? {:key1 "foo" :key2 "bar"} "foo")
  # =>
  true

  (has-value? {:key1 "foo" :key2 "bar"} "hello")
  # =>
  false

  (has-value? {:key1 "foo" :key2 "bar"} nil)
  # =>
  false

  (has-value? "" 0)
  # =>
  false

  (has-value? "" nil)
  # =>
  false

  (has-value? "abc" "a")
  # =>
  false

  (has-value? "abc" 'a)
  # =>
  false

  # tuples
  (has-value? [] 0)
  # =>
  false

  (has-value? ["a" "b" "c"] 'a)
  # =>
  false

  (has-value? ["a" "b" "c"] 97)
  # =>
  false

  (has-value? @[] 0)
  # =>
  false

  (has-value? @["a" "b" "c"] "a")
  # =>
  true

  (has-value? @["a" "b" "c"] 'a)
  # =>
  false

  (has-value? @["a" "b" "c"] 97)
  # =>
  false

  )
````````
"identity"
````````
(comment

  (identity 3)
  # =>
  3

  (nan? (identity math/nan))
  # =>
  true

  (identity math/inf)
  # =>
  math/inf

  (= identity
     (identity identity))
  # =>
  true

  )
````````
"if-let"
````````
(comment

  (if-let [x 1]
    true
    false)
  # =>
  true

  (if-let [x 1]
    true)
  # =>
  true

  (if-let [a (even? 3)]
    a
    false)
  # =>
  false

  (if-let [a (even? 3)]
    a)
  # =>
  nil

  (if-let [a (odd? 3)]
    a
    false)
  # =>
  true

  (if-let [a (odd? 3)]
    a)
  # =>
  true

  (if-let [a (odd? 3)
           b (even? 3)]
    b
    false)
  # =>
  false

  (if-let [a (odd? 3)
           b (even? 3)]
    b)
  # =>
  nil

  (if-let [a (+ 1 6)
           b (- 2 1)]
    (+ a b)
    false)
  # =>
  8

  (if-let [a (+ 1 6)
           b (- 2 1)]
    (+ a b))
  # =>
  8

  )
````````
"if-not"
````````
(comment

  (if-not true
    :then
    :else)
  # =>
  :else

  (if-not false
    :then
    :else)
  # =>
  :then

  )
````````
"if-with"
````````
(comment

  (if-with [f (file/open `/\`)]
    (eprint "Unexpected success")
    :an-ordinary-system)
  # =>
  :an-ordinary-system

  )
````````
"if"
````````
```
special form

`(if condition when-true when-false?)`

Introduce a branching construct.

The first form is the condition, the second form is the form to
evaluate when the condition is `true`, and the optional third form
is the form to evaluate when the condition is `false`. If no third
form is provided it defaults to `nil`.

The `if` special form will not evaluate the `when-true` or
`when-false` forms unless it needs to - it is a lazy form, which is
why it cannot be a function.

The condition is considered `false` only if it evaluates to `nil` or
`false` - all other values are considered `true`.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (if true
    1
    2)
  # =>
  1

  (if false
    :green
    :blue)
  # =>
  :blue

  (if (= 1 1) :clever)
  # =>
  :clever

  (if (= 0 1)
    :anything-is-possible
    :nothing-to-see-here)
  # =>
  :nothing-to-see-here

  )
````````
"inc"
````````
(comment

  (do
    (def i 0)
    (inc i))
  # =>
  1

  )
````````
"index-of"
````````
(comment

  (index-of 2 [1 2 3])
  # =>
  1

  (index-of 7 [0 1 2r111])
  # =>
  2

  (index-of :arthur
            [0 "fun" [:x :y] {:a 1}]
            :nothing-here)
  # =>
  :nothing-here

  )
````````
"indexed?"
````````
(comment

  (indexed? @[:a :b])
  # =>
  true

  (indexed? [8 9 11])
  # =>
  true

  (indexed? (freeze @["one" "step" "at" "a"]))
  # =>
  true

  (indexed? (seq [i :range [0 3]]
              (math/pow i 2)))
  # =>
  true

  (indexed? "a string")
  # =>
  false

  (indexed? @"a buffer")
  # =>
  false

  (indexed? :a-keyword)
  # =>
  false

  (indexed? 'a-symbol)
  # =>
  false

  (indexed? nil)
  # =>
  false

  (indexed? @{})
  # =>
  false

  (indexed? {})
  # =>
  false


  )
````````
"interpose"
````````
(comment

  (interpose ", " ["ant" "bee" "cheetah"])
  # =>
  @["ant" ", " "bee" ", " "cheetah"]

  (interpose ":" ["/usr/local/bin" "/usr/bin" "/bin"])
  # =>
  @["/usr/local/bin" ":" "/usr/bin" ":" "/bin"]

  )
````````
"juxt"
````````
(comment

  (function? (juxt inc dec))
  # =>
  true

  ((juxt inc dec zero?) 2)
  # =>
  [3 1 false]

  )
````````
"juxt*"
````````
(comment

  (function? (juxt* inc dec))
  # =>
  true

  ((juxt* inc dec zero?) 2)
  # =>
  [3 1 false]

  )
````````
"keep"
````````
(comment

  (keep identity [false :x nil true])
  # =>
  @[:x true]

  (keep (fn [x] (when (> x 1) x))
        @[0 1 2 3])
  # =>
  @[2 3]

  (keep (fn [x] (when (> x 2) (* x x)))
        [0 1 3 4 5])
  # =>
  @[9 16 25]

  (keep |(when (pos? (+ ;$&)) $0)
        [1 2 3] [-1 1 1])
  # =>
  @[2 3]

  (keep |(when (neg? (+ ;$&)) $0)
        [-1 -2 -3] [-1 1])
  # =>
  @[-1]

  (keep (fn [elt]
          (when (number? elt)
            elt))
        [1 :a "hello" [0 1 2] 0])
  # =>
  @[1 0]

  (keep (fn [elt]
          (when (number? elt)
            (string elt)))
        [1 :a "hello" [0 1 2] 0])
  # =>
  @["1" "0"]

  (keep (fn [elt]
            (when (even? elt)
              (symbol (string "fun-" elt))))
          [2r111 0x08 8r11 10])
  # =>
  '@[fun-8 fun-10]

  (keep (fn [x]
            (when (>= x (math/pow x 2))
              (math/sqrt x)))
          [0 0.5 1 2 6 8 math/inf])
  # =>
  @[0 (math/sqrt 0.5) 1 math/inf]

  (keep nil [])
  # =>
  @[]

  (keep (fn [x]
          (when (pos? x)
            (string x)))
        (coro
          (for i -3 3
            (yield i))))
  # =>
  @["1" "2"]

  (->> [0 1 2 3 7 8 9]
       (map |(math/pow $ 2))
       (keep (fn [x]
               (when (odd? x)
                 (math/sqrt x)))))
  # =>
  @[1 3 7 9]

  )
````````
"keyword?"
````````
(comment

  (keyword? :hello)
  # =>
  true

  (keyword? 'a-symbol)
  # =>
  false

  (keyword? "a string")
  # =>
  false

  )
````````
"label"
````````
(comment

  (label here
    (for i 0 2
      (when (pos? i)
        (return here i))))
  # =>
  1

  (label here
    (def x :unreturned)
    (for i 0 2
      (for j 0 2
        (when (and (pos? i) (pos? j))
          (return here [i j]))))
    x)
  # =>
  [1 1]

  )
````````
"last"
````````
(comment

  (last [:a :b :c])
  # =>
  :c

  (last [])
  # =>
  nil

  (last @[0 1 2])
  # =>
  2

  (last {:a 1 :b 2})
  # =>
  nil

  (last "hello")
  # =>
  (chr "o")

  (->> (try
         (last nil)
         ([e]
           e))
       (string/find "expected")
       truthy?)
  # =>
  true

  (last :hooooo)
  # =>
  (chr "o")

  (->> (try
         (last 32767)
         ([e]
           e))
       (string/find "expected")
       truthy?)
  # =>
  true

  )
````````
"let"
````````
(comment

  (let [x 1]
    x)
  # =>
  1

  (let []
    2)
  # =>
  2

  (let [a (+ 2 3)
        b (inc a)]
    b)
  # =>
  6

  (do
    (var x 1)
    (let [a 1
          _ (set x (inc a))
          b (inc x)]
      b))
  # =>
  3

  )
````````
"loop"
````````
(comment

  (do
    (var tot 3)
    (def arr @[])
    (loop [i :iterate (when (pos? (-- tot)) tot)]
      (array/push arr i))
    arr)
  # =>
  @[2 1]

  (do
    (def arr @[])
    (loop [i :range [0 4]]
      (array/push arr i))
    arr)
  # =>
  @[0 1 2 3]

  (do
    (def arr @[])
    (loop [i :range [0 4 2]]
      (array/push arr i))
    arr)
  # =>
  @[0 2]

  (do
    (def arr @[])
    (loop [i :range-to [8 12]]
      (array/push arr i))
    arr)
  # =>
  @[8 9 10 11 12]

  (do
    (def arr @[])
    (loop [i :range-to [8 12 2]]
      (array/push arr i))
    arr)
  # =>
  @[8 10 12]

  (do
    (def arr @[])
    (loop [j :down [10 0]]
      (array/push arr j))
    arr)
  # =>
  @[10 9 8 7 6 5 4 3 2 1]

  (do
    (def arr @[])
    (loop [j :down [10 0 2]]
      (array/push arr j))
    arr)
  # =>
  @[10 8 6 4 2]

  (do
    (def arr @[])
    (loop [j :down-to [3 -3]]
      (array/push arr j))
    arr)
  # =>
  @[3 2 1 0 -1 -2 -3]

  (do
    (def arr @[])
    (loop [j :down-to [3 -3 3]]
      (array/push arr j))
    arr)
  # =>
  @[3 0 -3]

  (do
    (def arr @[])
    (loop [k :keys {:a 1 :b 2}]
      (array/push arr k))
    (sort arr))
  # =>
  @[:a :b]

  (do
    (def arr @[])
    (loop [[k v] :pairs {:a 1 :b 2}]
      (array/push arr v)
      (array/push arr k))
    (table ;arr))
  # =>
  @{1 :a 2 :b}

  (do
    (def arr @[])
    (def nums [0 1 2])
    (loop [i :in nums]
      (array/push arr (math/pow i 3)))
    (sort arr))
  # =>
  @[0 1 8]

  (do
    (def arr @[])
    (def fib
      (fiber/new
        |(each x (range 3)
           (yield x))))
    (loop [i :in fib]
      (array/push arr (math/pow i 3)))
    arr)
  # =>
  @[0 1 8]

  (do
    (def arr @[])
    (loop [i :range [-3 3 0.5]
           :while (not (pos? i))]
      (array/push arr i))
    arr)
  # =>
  @[-3 -2.5 -2 -1.5 -1 -0.5 0]

  (do
    (def arr @[])
    (loop [i :range [-3 3 0.5]
           :until (pos? i)]
      (array/push arr i))
    arr)
  # =>
  @[-3 -2.5 -2 -1.5 -1 -0.5 0]

  (do
    (def arr @[])
    (loop [i :range [0 6]
           :let [y (math/pow i 3)]]
      (array/push arr y))
    arr)
  # =>
  @[0 1 8 27 64 125]

  (do
    (def arr @[])
    (def buf @"")
    (loop [i :range [0 3]
           :before (buffer/push-string buf "!")]
      (array/push arr (string buf))
      (array/push arr i))
    arr)
  # =>
  @["!" 0 "!!" 1 "!!!" 2]

  (do
    (def arr @[])
    (def buf @"")
    (loop [i :range [0 3]
           :after (buffer/push-string buf "!")]
      (array/push arr (string buf))
      (array/push arr i))
    arr)
  # =>
  @["" 0 "!" 1 "!!" 2]

  (do
    (def arr @[])
    (loop [i :range-to [1 3]
           :repeat i]
      (array/push arr i))
    arr)
  # =>
  @[1 2 2 3 3 3]

  )
````````
"map"
````````
(comment

  (map string [1 2 3])
  # =>
  @["1" "2" "3"]

  (map scan-number ["2r111" "0x08" "8r11" "10"])
  # =>
  @[7 8 9 10]

  (map identity [["alice" 1] ["bob" 2] ["carol" 3]])
  # =>
  @[["alice" 1] ["bob" 2] ["carol" 3]]

  (->> [[:a 1 ":)"] [:b 2 ":("] [:c 3 ":o"]]
       (map (fn [[k _ v]]
              [k v]))
       flatten
       splice
       table)
  # =>
  @{:a ":)"
    :b ":("
    :c ":o"}

  (map array [:x :y] [-1 1])
  # =>
  @[@[:x -1] @[:y 1]]

  (map |(pos? (+ ;$&)) [1 2 3] [-1 -2 -3] [0 1])
  # =>
  @[false true]

  )
````````
"mapcat"
````````
(comment

  (mapcat string [1 2 3])
  # =>
  @["1" "2" "3"]

  (mapcat scan-number ["2r111" "0x08" "8r11" "10"])
  # =>
  @[7 8 9 10]

  (mapcat identity [["alice" 1] ["bob" 2] ["carol" 3]])
  # =>
  @["alice" 1 "bob" 2 "carol" 3]

  (mapcat tuple [:x :y] [-1 1])
  # =>
  @[:x -1 :y 1]

  (mapcat |(tuple $0 $1 $2) [:a :b] [:x :y :z] [0 1])
  # =>
  @[:a :x 0 :b :y 1]

  (->> [[:a 1] [:b 2] [:c 3]]
       (mapcat identity)
       splice
       table)
  # =>
  @{:a 1 :b 2 :c 3}

  )
````````
"max-of"
````````
(comment

  (max-of [-1 -2 -3])
  # =>
  -1

  (max-of [-2 0 3])
  # =>
  3

  (max-of [])
  # =>
  nil

  (max-of [nil 1])
  # =>
  nil

  (max-of [nil math/inf])
  # =>
  nil

  (max-of [nil math/int32-max math/inf])
  # =>
  nil

  (max-of [math/nan nil])
  # =>
  nil

  (nan? (max-of [math/nan math/inf]))
  # =>
  true

  )
````````
"max"
````````
(comment

  (max -1 -2 -3)
  # =>
  -1

  (max -2 0 3)
  # =>
  3

  (max)
  # =>
  nil

  (max nil 1)
  # =>
  nil

  (max nil math/inf)
  # =>
  nil

  (max nil math/int32-max math/inf)
  # =>
  nil

  (max math/nan nil)
  # =>
  nil

  (nan? (max math/nan math/inf))
  # =>
  true

  )
````````
"mean"
````````
(comment

  (mean [1 2 3 4 5])
  # =>
  3

  (nan? (mean []))
  # =>
  true

  (mean (range 0 1001))
  # =>
  500

  (mean {:a 2 :e 6})
  # =>
  4

  )
````````
"min-of"
````````
(comment

  (min-of [-1 -2 -3])
  # =>
  -3

  (min-of [-2 0 3])
  # =>
  -2

  (min-of [])
  # =>
  nil

  (min-of [nil 1])
  # =>
  1

  (min-of [nil math/inf])
  # =>
  math/inf

  (min-of [nil math/int32-max math/inf])
  # =>
  math/int32-max

  (nan? (min-of [math/nan nil]))
  # =>
  true

  (nan? (min-of [math/nan math/inf]))
  # =>
  true

  )
````````
"min"
````````
(comment

  (min -1 -2 -3)
  # =>
  -3

  (min -2 0 3)
  # =>
  -2

  (min)
  # =>
  nil

  (min nil 1)
  # =>
  1

  (min nil math/inf)
  # =>
  math/inf

  (min nil math/int32-max math/inf)
  # =>
  math/int32-max

  (nan? (min math/nan nil))
  # =>
  true

  (nan? (min math/nan math/inf))
  # =>
  true

  )
````````
"nan?"
````````
(comment

  (nan? math/nan)
  # =>
  true

  (nan? (/ 0 0))
  # =>
  true

  (nan? (inc math/nan))
  # =>
  true

  (nan? (dec math/nan))
  # =>
  true

  (nan? (/ math/nan math/nan))
  # =>
  true

  (nan? (* 0 math/nan))
  # =>
  true

  (nan? nil)
  # =>
  false

  )
````````
"neg?"
````````
(comment

  (neg? 0)
  # =>
  false

  (neg? -1)
  # =>
  true

  (neg? 1)
  # =>
  false

  (neg? math/inf)
  # =>
  false

  (neg? math/-inf)
  # =>
  true

  (neg? math/nan)
  # =>
  false

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
  (neg? {:compare a-cmp :value -1}))
  # =>
  true

  )
````````
"number?"
````````
(comment

  (number? 1)
  # =>
  true

  (number? 2.0)
  # =>
  true

  (number? 2e-1)
  # =>
  true

  (number? 0xF_F__F___F____)
  # =>
  true

  (number? 3r01&02)
  # =>
  true

  (number? 2r0101010001)
  # =>
  true

  (number? 2_3_1__._1_2_e-1)
  # =>
  true

  (number? 0x09.1F)
  # =>
  true

  (number? 1_3__0890__100__)
  # =>
  true

  (number? 0x0_9_.1_f__)
  # =>
  true

  (number? -0xFF)
  # =>
  true

  (number? -36r20)
  # =>
  true

  (number? 1E9)
  # =>
  true

  (number? -2.71828)
  # =>
  true

  (number? 0xaB)
  # =>
  true

  (number? 3e8)
  # =>
  true

  (number? math/nan)
  # =>
  true

  (number? (/ 0 0))
  # =>
  true

  (number? (inc math/nan))
  # =>
  true

  (number? (dec math/nan))
  # =>
  true

  (number? (/ math/nan math/nan))
  # =>
  true

  (number? (* 0 math/nan))
  # =>
  true

  (number? nil)
  # =>
  false

  )
````````
"odd?"
````````
(comment

  (odd? 0)
  # =>
  false

  (odd? 1)
  # =>
  true

  (odd? 3.0)
  # =>
  true

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (defn a-mod
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (mod x-val y-val)))
    (odd? {:compare a-cmp :mod a-mod :value -3}))
  # =>
  true

  )
````````
"one?"
````````
(comment

  (one? 0)
  # =>
  false

  (one? 1)
  # =>
  true

  (one? 1.0)
  # =>
  true

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (one? {:compare a-cmp :value 1}))
  # =>
  true

  )
````````
"or"
````````
(comment

  (or)
  # =>
  nil

  (or 1)
  # =>
  1

  (or nil 1)
  # =>
  1

  (or nil (/ 2 1) false)
  # =>
  2

  (or false false false nil)
  # =>
  nil

  )
````````
"os/strftime"
````````
(comment

  (os/strftime "%a" 0)
  # =>
  "Thu"

  (os/strftime "%A" 0)
  # =>
  "Thursday"

  (os/strftime "%b" 0)
  # =>
  "Jan"

  (os/strftime "%B" 0)
  # =>
  "January"

  (os/strftime "%c" 0)
  # =>
  "Thu Jan  1 00:00:00 1970"

  (os/strftime "%d" 0)
  # =>
  "01"

  (os/strftime "%H" 0)
  # =>
  "00"

  (os/strftime "%I" 0)
  # =>
  "12"

  (os/strftime "%j" 0)
  # =>
  "001"

  (os/strftime "%m" 0)
  # =>
  "01"

  (os/strftime "%M" 0)
  # =>
  "00"

  (os/strftime "%p" 0)
  # =>
  "AM"

  (os/strftime "%S" 0)
  # =>
  "00"

  (os/strftime "%U" 0)
  # =>
  "00"

  (os/strftime "%w" 0)
  # =>
  "4"

  (os/strftime "%W" 0)
  # =>
  "00"

  (os/strftime "%x" 0)
  # =>
  "01/01/70"

  (os/strftime "%X" 0)
  # =>
  "00:00:00"

  (os/strftime "%y" 0)
  # =>
  "70"

  (os/strftime "%Y" 0)
  # =>
  "1970"

  (os/strftime "%%")
  # =>
  "%"

  )

#  (os/strftime "%Z" 0)
#  "GMT"

```
  Some conversion specifications can be modified by preceding the conver‐
  sion specifier character by the E or O modifier to indicate that an al‐
  ternative format should be used.  If the alternative format or specifi‐
  cation  does  not exist for the current locale, the behavior will be as
  if the unmodified conversion specification were used. (SU)  The  Single
  UNIX  Specification  mentions  %Ec,  %EC, %Ex, %EX, %Ey, %EY, %Od, %Oe,
  %OH, %OI, %Om, %OM, %OS, %Ou, %OU, %OV, %Ow, %OW, %Oy, where the effect
  of the O modifier is to use alternative numeric symbols (say, roman nu‐
  merals), and that of the E modifier is to use a locale-dependent alter‐
  native  representation.   The  rules governing date representation with
  the E modifier can be obtained by supplying ERA as  an  argument  to  a
  nl_langinfo(3).   One example of such alternative forms is the Japanese
  era calendar scheme in the ja_JP glibc locale.
```

#  (os/strftime "%E" 0)
#  "%E"

#  (os/strftime "%O")
#  "%O"

#  (os/strftime "%+")
#  "%+"
````````
"pos?"
````````
(comment

  (pos? 0)
  # =>
  false

  (pos? -1)
  # =>
  false

  (pos? 1)
  # =>
  true

  (pos? math/inf)
  # =>
  true

  (pos? math/-inf)
  # =>
  false

  (pos? math/nan)
  # =>
  true

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
  (pos? {:compare a-cmp :value 1}))
  # =>
  true

  )
````````
"product"
````````
(comment

  (product [1 2 3])
  # =>
  6

  (product [])
  # =>
  1

  (product (range 1 (inc 3)))
  # =>
  6

  (product {:a 2 :e 6})
  # =>
  12

  (product "hello")
  # =>
  13599570816

  )
````````
"prompt"
````````
(comment

  (prompt :fun
    (for i 0 2
      (when (pos? i)
        (return :fun i))))
  # =>
  1

  (prompt :here
    (for i 0 2
      (for j 0 2
        (when (and (pos? i) (pos? j))
          (return :here [i j])))))
  # =>
  [1 1]

  (do
    (defn l
      []
      (return :label :left))

    (defn r
      []
      (return :label :right))

    (defn m
      []
      (if true
        (l)
        (r))
      :never-reached)

    (prompt :label
      (m)))
  # =>
  :left

  )
````````
"protect"
````````
(comment

  (protect (+ 1 1))
  # =>
  [true 2]

  (protect (error "oops"))
  # =>
  [false "oops"]

  )
````````
"quasiquote"
````````
```
special form

`(quasiquote x)`

Similar to `(quote x)`, but allows for unquoting within `x`.

This makes `quasiquote` useful for writing macros, as a macro
definition often generates a lot of templated code with a few custom
values.

The shorthand for `quasiquote` is a leading tilde `~` before a form.
So `(quasiquote x)` is equivalent to `~x`.

Within that form, `(unquote x)` will evaluate and insert `x` into the
`unquote` form.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  ~x
  # =>
  'x

  (quasiquote x)
  # =>
  'x

  (do
    (def a 1)
    (quasiquote (unquote a)))
  # =>
  1

  ~{:main (sequence "a" "b")}
  # =>
  '{:main (sequence "a" "b")}

  (do
    (def a 1)
    ~{:main (choice "a" ,a)})
  # =>
  '{:main (choice "a" 1)}

  )
````````
"quote"
````````
```
special form

`(quote x)`

Evaluates to the literal value of the first argument.

The argument is not compiled and is simply used as a constant value in
the compiled code.

Preceding a form with a single quote is shorthand for `(quote form)`.
Thus `'form` and `(quote form)` are equivalent.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (quote x)
  # =>
  'x

  'x
  # =>
  'x

  '(:a :b :c)
  # =>
  '(:a :b :c)

  (quote (+ 1 1))
  # =>
  '(+ 1 1)

  )
````````
"range"
````````
(comment

  (range 10)
  # =>
  @[0 1 2 3 4 5 6 7 8 9]

  (range 0 3)
  # =>
  @[0 1 2]

  (range -1 2)
  # =>
  @[-1 0 1]

  (range 0 9 3)
  # =>
  @[0 3 6]

  (range 9 0 -3)
  # =>
  @[9 6 3]

  (range 0 0)
  # =>
  @[]

  (range 0 -10)
  # =>
  @[]

  )
````````
"reduce"
````````
(comment

  (reduce + 0 [1 2 3])
  # =>
  6

  (reduce (fn [x y]
            (if (not (empty? x))
              (string x ", " y)
              y))
          ""
          [:ant :bee :cheetah])
  # =>
  "ant, bee, cheetah"

  (reduce nil nil [])
  # =>
  nil

  (reduce nil :garuda [])
  # =>
  :garuda

  )
````````
"repeat"
````````
(comment

  (do
    (def arr @[])
    (var i 0)
    (repeat 3
      (array/push arr i)
      (++ i))
    arr)
  # =>
  @[0 1 2]

  )
````````
"return"
````````
(comment

  (prompt :there
    (for i 0 2
      (for j 0 2
        (when (and (pos? i) (pos? j))
          (return :there [i j])))))
  # =>
  [1 1]

  (label there
    (def z :not-returned)
    (for i 0 2
      (for j 0 2
        (when (and (pos? i) (pos? j))
          (return there [i j]))))
    z)
  # =>
  [1 1]

  )
````````
"reverse"
````````
(comment

  (reverse [1 2 3]) 
  # => 
  @[3 2 1]

  (reverse "abcdef") 
  # => 
  @"fedcba"

  )
````````
"seq"
````````
(comment

  (do
    (var tot 3)
    (seq [i :iterate (when (pos? (-- tot)) tot)]
      i))
  # =>
  @[2 1]

  (seq [i :range [0 4]]
    i)
  # =>
  @[0 1 2 3]

  (seq [i :range [0 4 2]]
    i)
  # =>
  @[0 2]

  (seq [i :range-to [8 12]]
    i)
  # =>
  @[8 9 10 11 12]

  (seq [i :range-to [8 12 2]]
    i)
  # =>
  @[8 10 12]

  (seq [j :down [10 0]]
    j)
  # =>
  @[10 9 8 7 6 5 4 3 2 1]

  (seq [j :down [10 0 2]]
    j)
  # =>
  @[10 8 6 4 2]

  (seq [j :down-to [3 -3]]
    j)
  # =>
  @[3 2 1 0 -1 -2 -3]

  (seq [j :down-to [3 -3 3]]
    j)
  # =>
  @[3 0 -3]

  (sort
    (seq [k :keys {:a 1 :b 2}]
      k))
  # =>
  @[:a :b]

  (sort
    (seq [[k v] :pairs {:a 1 :b 2}]
      [v k]))
  # =>
  @[[1 :a] [2 :b]]

  (seq [i :in [0 1 2]]
    (math/pow i 3))
  # =>
  @[0 1 8]

  (seq [i :in (fiber/new
                |(each x (range 3)
                   (yield x)))]
    (math/pow i 3))
  # =>
  @[0 1 8]

  (seq [i :range [-3 3 0.5]
        :while (not (pos? i))]
    i)
  # =>
  @[-3 -2.5 -2 -1.5 -1 -0.5 0]

  (seq [i :range [-3 3 0.5]
        :until (pos? i)]
    i)
  # =>
  @[-3 -2.5 -2 -1.5 -1 -0.5 0]

  (seq [i :range [0 6]
        :let [y (math/pow i 3)]]
    y)
  # =>
  @[0 1 8 27 64 125]

  (do
    (def buf @"")
    (flatten
      (seq [i :range [0 3]
            :before (buffer/push-string buf "!")]
        [(string buf) i])))
  # =>
  @["!" 0 "!!" 1 "!!!" 2]

  (do
    (def buf @"")
    (flatten
      (seq [i :range [0 3]
            :after (buffer/push-string buf "!")]
        [(string buf) i])))
  # =>
  @["" 0 "!" 1 "!!" 2]

  (seq [i :range-to [1 3]
        :repeat i]
    i)
  # =>
  @[1 2 2 3 3 3]

  )
````````
"set"
````````
```
special form

`(set l-value r-value)`

Update the value of the var `l-value` with the new `r-value`.

The `set` special form will then evaluate to `r-value`.

The `r-value` can be any expression, and the `l-value` should be a
bound var or a pair of a data structure and key. This allows `set` to
behave like `setf` or `setq` in Common Lisp.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do
    (var x 1)
    (set x 2))
  # =>
  2

  (do
    (set (@{:a 1} :a)
         3))
  # =>
  3

  (do
    (def tbl @{:x 8})
    (set (tbl :x)
         9)
    tbl)
  # =>
  @{:x 9}

  (do
    (def arr @[0 1])
    (set (arr 1)
         3)
    arr)
  # =>
  @[0 3]

  (do
    (def buf @"hello")
    (set (buf 1)
         (chr "a"))
    buf)
  # =>
  @"hallo"

  )
````````
"short-fn"
````````
(comment

  ((fn [n] (+ n n)) 10)
  # =>
  20

  ((short-fn (+ $ $)) 10)
  # =>
  20

  (|(+ $ $) 10)
  # =>
  20

  (|(+ $0 $0) 10)
  # =>
  20

  (|(string $0 $1) "hi" "ho")
  # =>
  "hiho"

  (|(apply + $&) 1 2 3)
  # =>
  6

  (|{:a 1})
  # =>
  {:a 1}

  (|(= $ 1) 1)
  # =>
  true

  (|[1 2])
  # =>
  [1 2]

  (|@[8 9])
  # =>
  @[8 9]

  (|@(:fun :time))
  # =>
  @[:fun :time]

  (|{:a 1})
  # =>
  {:a 1}

  (|@{:pose :sit})
  # =>
  @{:pose :sit}

  (|'(0))
  # =>
  [0]

  (|~(:x))
  # =>
  [:x]

  (|:kwd)
  # =>
  :kwd

  (let [a-sym 1]
    (|a-sym))
  # =>
  1

  (|"a-str")
  # =>
  "a-str"

  (|@"buffer")
  # =>
  @"buffer"

  (|``long-string``)
  # =>
  "long-string"

  (|@``long-buffer``)
  # =>
  @"long-buffer"

  (|false)
  # =>
  false

  (|nil)
  # =>
  nil

  (|8)
  # =>
  8

  ((||8))
  # =>
  8

  (((|||8)))
  # =>
  8

  (|())
  # =>
  []

  )
````````
"slice"
````````
(comment

  (slice @[1 2 3])
  # =>
  [1 2 3]

  (slice @[:a :b :c] 1)
  # =>
  [:b :c]

  (slice [:a :b :c :d :e] 2 4)
  # =>
  [:c :d]

  (slice [:a :b :c :d :e] 2 -1)
  # =>
  [:c :d :e]

  (slice [:a :b :c :d :e] 2 -2)
  # =>
  [:c :d]

  (slice [:a :b :c :d :e] 2 -4)
  # =>
  []

  (def [ok? value]
    (-> (slice [:a :b :c :d :e] 2 -10)
        protect))
  # =>
  [false "end index -10 out of range [-6,5]"]

  (slice "abcdefg" 0 2)
  # =>
  "ab"

  (slice @"abcdefg" 0 2)
  # =>
  "ab"

  (slice :hallo 0 2)
  # =>
  "ha"

  (slice 'marshmallow 0 5)
  # =>
  "marsh"

  )
````````
"some"
````````
(comment

  (some pos? [math/-inf 0])
  # =>
  nil

  (some (fn [x] (when (pos? x) x)) [1 0 -1])
  # =>
  1

  (some pos? [])
  # =>
  nil

  (some (fn [x y] (neg? (* x y))) [1 1] [1 -2])
  # =>
  true

  (some |(zero? (* $0 $1 $2)) [1 2] [7 8] [-2 -1 0])
  # =>
  nil

  (some |(pos? (+ $0 $1 $2)) [1 2 3] [7 8 9] [])
  # =>
  nil

  )
````````
"sort-by"
````````
(comment

  (do
    (def arr @[2 0 1])
    (sort-by - arr)
    arr)
  # =>
  @[2 1 0]

  (do
    (def arr @[-2 0 -1])
    (sort-by math/abs arr)
    arr)
  # =>
  @[0 -1 -2]

  (do
    (def arr @[[:fun 0] [:swim 2] [:play -1]])
    (sort-by |(get $ 1) arr)
    arr)
  # =>
  '@[(:play -1) (:fun 0) (:swim 2)]

  )
````````
"sort"
````````
(comment

  (do
    (def arr @[2 0 1])
    (sort arr)
    arr)
  # =>
  @[0 1 2]

  (do
    (def arr @[2 0 1])
    (sort arr >)
    arr)
  # =>
  @[2 1 0]

  (do
    (def arr @[[:fun 0] [:swim 2] [:play -1]])
    (sort arr (fn [[_ x] [_ y]]
                (< x y)))
    arr)
  # =>
  '@[(:play -1) (:fun 0) (:swim 2)]

  )
````````
"sorted"
````````
(comment

  (do
    (def arr @[2 0 1])
    [(sorted arr) arr])
  # =>
  [@[0 1 2] @[2 0 1]]

  (do
    (def arr @[2 0 1])
    [(sorted arr >) arr])
  # =>
  [@[2 1 0] @[2 0 1]]

  (do
    (def arr @[[:fun 0] [:swim 2] [:play -1]])
    [(sorted arr (fn [[_ x] [_ y]]
                  (< x y)))
     arr])
  # =>
  '(@[(:play -1) (:fun 0) (:swim 2)]
     @[(:fun 0) (:swim 2) (:play -1)])

  )
````````
"splice"
````````
```
special form

`(splice x)`

The `splice` special form is an interesting form that allows an array
or tuple to be put into another form inline.

It only has an effect in two places - as an argument in a function
call or literal constructor, or as the argument to the `unquote` form.

Outside of these two settings, the `splice` special form simply
evaluates directly to its argument `x`.

The shorthand for `splice` is prefixing a form with a semicolon.  So
`(splice form)` is equivalent to `;form`.

The `splice` special form has no effect on the behavior of other
special forms, except as an argument to `unquote`.

In the context of a function call, `splice` will insert the contents
of `x` in the parameter list.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (+ (splice [1 2 3]))
  # =>
  6

  (* ;[1 2 3])
  # =>
  6

  )
````````
"string?"
````````
(comment

  (string? "hello")
  # =>
  true

  (string?
    ``
    even long-strings
    are strings
    ``)
  # =>
  true

  (string? @"")
  # =>
  false

  (string? (string @"hi"))
  # =>
  true

  )
````````
"string/split"
````````
(comment

  (string/split " " "hello there friend")
  # =>
  @["hello" "there" "friend"]

  (string/split "," "ant,bee,fox,elephant")
  # =>
  @["ant" "bee" "fox" "elephant"]

  (string/split "," "ant,bee,fox,elephant" 7)
  # =>
  @["ant,bee" "fox" "elephant"]

  (string/split "," "ant,bee,fox,elephant" 7 2)
  # =>
  @["ant,bee" "fox,elephant"]

  )
````````
"string/trim"
````````
(comment

  (string/trim "  foo ")
  # =>
  "foo"

  (string/trim "\t bar\n\r\f")
  # =>
  "bar"

  (string/trim "_.foo_bar. \n" " ._\n")
  # =>
  "foo_bar"

  )
````````
"string/triml"
````````
(comment

  (string/triml "  foo ")
  # =>
  "foo "

  (string/triml "\t bar\n\r\f")
  # =>
  "bar\n\r\f"

  (string/triml "_.foo_bar. \n" " ._\n")
  # =>
  "foo_bar. \n"

  )
````````
"string/trimr"
````````
(comment

  (string/trimr "  foo ")
  # =>
  "  foo"

  (string/trimr "\t bar\n\r\f")
  # =>
  "\t bar"

  (string/trimr "_.foo_bar. \n" " ._\n")
  # =>
  "_.foo_bar"

  )
````````
"struct?"
````````
(comment

  (struct? {:animal "penguin"
            :drink "green tea"})
  # =>
  true

  (struct? @{:x 640 :y 480})
  # =>
  false

  (struct? (freeze @{:x 1080 :y 720}))
  # =>
  true

  (struct? (table/to-struct @{:a 1 :b 2}))
  # =>
  true

  )
````````
"sum"
````````
(comment

  (sum [])
  # =>
  0

  (sum [1 2])
  # =>
  3

  (sum @[1])
  # =>
  1

  (sum (range 1 100))
  # =>
  4950

  (sum @{:a 2 :e 6})
  # =>
  8

  (sum {:a 1 :b 2 :c 4})
  # =>
  7

  )
````````
"symbol?"
````````
(comment

  (symbol? 'print)
  # =>
  true

  (symbol? (symbol "my-sym"))
  # =>
  true

  (symbol? '*out*)
  # =>
  true

  (symbol? :keyword)
  # =>
  false

  (symbol? "i am a string")
  # =>
  false

  )
````````
"table?"
````````
(comment

  (table? @{:x 640 :y 480})
  # =>
  true

  (table? {:animal "penguin"
           :drink "green tea"})
  # =>
  false

  (table? (from-pairs [:color "yellow"
                       :shape "star"]))
  # =>
  true

  (table? (struct/to-table {:a 1 :b 2}))
  # =>
  true

  (table? (tabseq [i :range-to [0 3]]
            i (math/pow i 3)))
  # =>
  true

  )
````````
"tabseq"
````````
(comment

  (do
    (var tot 3)
    (tabseq [i :iterate (when (pos? (-- tot)) tot)]
      i (math/pow i 3)))
  # =>
  @{1 1
    2 8}

  (tabseq [i :range [0 4]]
    i (math/pow i 2))
  # =>
  @{0 0
    1 1
    2 4
    3 9}

  (tabseq [i :range [0 4 2]]
    i (* -1 i))
  # =>
  @{0 0
    2 -2}

  (tabseq [i :range-to [8 12]]
    i (even? i))
  # =>
  @{8 true
    9 false
    10 true
    11 false
    12 true}

  (tabseq [i :range-to [8 12 2]]
    i (even? i))
  # =>
  @{8 true
    10 true
    12 true}

  (tabseq [j :down [10 0]]
    (even? j) j)
  # =>
  @{false 1
    true 2}

  (tabseq [j :down [10 0 2]]
    (even? j) j)
  # =>
  @{true 2}

  (tabseq [j :down-to [3 -3]]
    (pos? j) j)
  # =>
  @{false -3
    true 1}

  (tabseq [j :down-to [3 -3 3]]
    (pos? j) j)
  # =>
  @{false -3
    true 3}

  (tabseq [k :keys {:a 1 :b 2}]
    k (keyword (string/ascii-upper k)))
  # =>
  @{:a :A
    :b :B}

  (tabseq [[k v] :pairs {:a 1 :b 2}]
    v k)
  # =>
  @{1 :a
    2 :b}

  (tabseq [i :in [0 1 2]]
    i (math/pow i 3))
  # =>
  @{0 0
    1 1
    2 8}

  (tabseq [i :in (fiber/new
                   |(each x (range 3)
                      (yield x)))]
    i (math/pow i 3))
  # =>
  @{0 0
    1 1
    2 8}

  (tabseq [i :range [-3 3 0.5]
           :while (not (pos? i))]
    i (math/pow i 2))
  # =>
  @{-3   9
    -2.5 6.25
    -2   4
    -1.5 2.25
    -1   1
    -0.5 0.25
    -0   0}

  (tabseq [i :range [-3 3 0.5]
           :until (pos? i)]
    i (math/pow i 2))
  # =>
  @{-3   9
    -2.5 6.25
    -2   4
    -1.5 2.25
    -1   1
    -0.5 0.25
    -0   0}

  (tabseq [i :range [0 6]
           :let [c (math/pow i 3)]]
    i c)
  # =>
  @{0 0
    1 1
    2 8
    3 27
    4 64
    5 125}

  (do
    (def buf @"")
    (tabseq [i :range [0 3]
             :before (buffer/push-string buf "!")]
      i (string buf)))
  # =>
  @{0 "!"
    1 "!!"
    2 "!!!"}

  (do
    (def buf @"")
    (tabseq [i :range [0 3]
             :after (buffer/push-string buf "!")]
      i (string buf)))
  # =>
  @{0 ""
    1 "!"
    2 "!!"}

  (tabseq [i :range-to [1 3]
           :repeat i]
    (even? i) i)
  # =>
  @{false 3
    true 2}

  )
````````
"take-until"
````````
(comment

  (take-until even? [-1 1 3 8])
  # =>
  [-1 1 3]

  (take-until odd? @[2 6 8 12 13])
  # =>
  [2 6 8 12]

  (take-until odd? "zzzzz!")
  # =>
  "zzzzz"

  (take-until even? @"ooooooh")
  # =>
  "oooooo"

  (take-until even? 'my-symbol)
  # =>
  "my-sym"

  (take-until even? 'my-keyword)
  # =>
  "my-keywo"

  (take-until number? (coro
                        (each elt [:a "fun" @"thing" 0]
                          (yield elt))))
  # =>
  @[:a "fun" @"thing"]

  (take-until nil [])
  # =>
  []


  )
````````
"take-while"
````````
(comment

  (take-while even? [2 6 8 -1])
  # =>
  [2 6 8]

  (take-while odd? @[1 3 7 9 12])
  # =>
  [1 3 7 9]

  (take-while odd? "!zzzzz")
  # =>
  "!"

  (take-while even? @"hhhhha")
  # =>
  "hhhhh"

  (take-while odd? 'my-symbol)
  # =>
  "my-sym"

  (take-while odd? 'my-keyword)
  # =>
  "my-keywo"

  (take-while number? (coro
                        (each elt [1 2 3 :boo!]
                          (yield elt))))
  # =>
  @[1 2 3]

  (take-while nil [])
  # =>
  []


  )
````````
"take"
````````
(comment

  (take 2 [0 1 2 3])
  # =>
  [0 1]

  (take 3 (range -3 0))
  # =>
  [-3 -2 -1]

  (take 2 "hiya")
  # =>
  "hi"

  (take 3 (coro
            (each i (range 10)
              (yield i))))
  # =>
  @[0 1 2]

  (take 0 "hiya")
  # =>
  ""

  (take 0 (range 100))
  # =>
  []

  (take 0 (coro (yield :a)))
  # =>
  @[]

  )
````````
"toggle"
````````
(comment

  (do
    (var a true)
    (toggle a))
  # =>
  false

  (do
    (var b false)
    (toggle b))
  # =>
  true

  (do
    (var c nil)
    (toggle c))
  # =>
  true

  (do
    (var x 1)
    (toggle x))
  # =>
  false

  )
````````
"try"
````````
(comment

  (try
    :success
    ([_]
      nil))
  # =>
  :success

  (try
    (error "ouch")
    ([err]
      err))
  # =>
  "ouch"

  (try
    (error "extra")
    ([_ fib]
      (type fib)))
  # =>
  :fiber

  )
````````
"tuple?"
````````
(comment

  (tuple? [:a :b])
  # =>
  true

  (tuple? '(:x :y :z))
  # =>
  true

  (tuple? (freeze @[:ant :bee]))
  # =>
  true

  (tuple? (drop 1 [-1 0 1]))
  # =>
  true

  (tuple? (drop-until even? [-1 1 3 8]))
  # =>
  true

  (tuple? (drop-while odd? [-1 1 3 8]))
  # =>
  true

  (tuple? (take 2 @[-2 -1 0]))
  # =>
  true

  (tuple? (take-until even? [-3 -1 0]))
  # =>
  true

  (tuple? (take-while odd? [-5 -3 -1 8]))
  # =>
  true

  (tuple? (protect (error :hey)))
  # =>
  true

  (tuple? (string/bytes "smile"))
  # =>
  true

  (tuple? (-> (disasm (fn [] :a))
              (get :bytecode)
              first))
  # =>
  true

  (tuple? @[])
  # =>
  false

  (tuple? @())
  # =>
  false

  )
````````
"type"
````````
(comment

  (type nil)
  # =>
  :nil

  (type true)
  # =>
  :boolean

  (type false)
  # =>
  :boolean

  (type 1)
  # =>
  :number

  (type :key)
  # =>
  :keyword

  (type (int/s64 "100"))
  # =>
  :core/s64

  )
````````
"unless"
````````
(comment

  (unless false
    :was-in-unless)
  # =>
  :was-in-unless

  (unless true
    :unrevealed-mystery)
  # =>
  nil

  )
````````
"unquote"
````````
```
special form

`(unquote x)`

Unquote a form within a `quasiquote`. Outside of a `quasiquote`,
`unquote` is invalid.

The shorthand for `(unquote x)` is `,x`.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do
    (def a 1)
    (quasiquote (unquote a)))
  # =>
  1

  (do
    (def b 2)
    ~,b)
  # =>
  2

  )
````````
"upscope"
````````
```
special form

`(upscope & body)`

Similar to `do`, `upscope` evaluates a number of forms in sequence and
evaluates to the result of the last form.

However, `upscope` does not create a new lexical scope, which means
that bindings created inside it are visible in the scope where
`upscope` is declared. This is useful for writing macros that make
several `def` and `var` declarations at once.

In general, use this macro as a last resort. There are other, often
better ways to do this, including using destructuring.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do
    (def a 1)
    (upscope
      (def a 2))
    a)
  # =>
  2

  )
````````
"var"
````````
```
special form

`(var name meta... value)`

`var` binds a value to a symbol.

The symbol can be substituted for the value in subsequent expressions
for the same result.

A binding made by `var` can be updated using `set`.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (do
    (var a 1)
    a)
  # =>
  1

  (do
    (var a 1)
    (var a 2)
    a)
  # =>
  2

  (do
    (var a 1)
    (set a 3)
    a)
  # =>
  3

  (do
    (var a 1)
    (do
      (var a 2))
    a)
  # =>
  1

  (do
    (var [a b]
      [1 2])
    a)
  # =>
  1

  (do
    (var [x y & rest]
      [1 2 3 8 9])
    rest)
  # =>
  '(3 8 9)

  (do
    (var {:a a
          :b b}
      (table :a 1
             :b 2))
    b)
  # =>
  2

  )
````````
"when-let"
````````
(comment

  (when-let [x 1]
    true)
  # =>
  true

  (when-let [a (even? 3)]
    a)
  # =>
  nil

  (when-let [a (odd? 3)]
    a)
  # =>
  true

  (when-let [a (odd? 3)
             b (even? 3)]
    b)
  # =>
  nil

  (when-let [a (+ 1 6)
             b (- 2 1)]
    (+ a b))
  # =>
  8

  )
````````
"when-with"
````````
(comment

  (when-with [f (file/open `/\`)]
    :mysterious-setup)
  # =>
  nil


  )
````````
"when"
````````
(comment

  (when true
    :fun)
  # =>
  :fun

  (when false
    :i-am-invisible)
  # =>
  nil

  )
````````
"while"
````````
```
special form

`(while condition body...)`

The `while` special form compiles to a C-like while loop.

The `body` of the form will be continuously evaluated until the
condition is `false` or `nil`.  Therefore, it is expected that the
`body` will contain some side effects or the loop will go on forever.

The `while` loop always evaluates to `nil`.

For further info, see:

  https://janet-lang.org/docs/specials.html
```

(comment

  (while true
    (break))
  # =>
  nil

  (do
    (var i 3)
    (while (pos? i)
      (-- i)))
  # =>
  nil

  )
````````
"with-syms"
````````
(comment

  (eval (with-syms [$my-sym]
          ~(do
             (def ,$my-sym 1)
             ,$my-sym)))
  # =>
  1

  (eval (with-syms [$my-a $my-i]
          ~(do
             (def ,$my-a @[])
             (for ,$my-i 0 2
               (array/push ,$my-a ,$my-i))
             ,$my-a)))
  # =>
  @[0 1]

  )
````````
"with"
````````
(comment

  (do
    (def closed-file
      (with [f (file/temp)]
        (file/write f "a")))
    (->> (try
           (file/read closed-file :all)
           ([e]
             e))
         (string/find "file is closed")
         truthy?))
  # =>
  true

  (do
    (def source @[:a :b :c])
    (with [arr
           source
           array/clear]
      (array/push arr :x))
    (empty? source))
  # =>
  true

  )
````````
"zero?"
````````
(comment

  (zero? 0)
  # =>
  true

  (zero? -0)
  # =>
  true

  (zero? 0.0)
  # =>
  true

  (zero? math/nan)
  # =>
  false

  (zero? math/inf)
  # =>
  false

  (do
    (defn a-cmp
      [x y]
      (let [x-val (or (get x :value) x)
            y-val (or (get y :value) y)]
        (cond
          (< x-val y-val) -1
          (= x-val y-val) 0
          (> x-val y-val) 1)))
    (zero? {:compare a-cmp :value 0}))
  # =>
  true

  )
````````
  })
