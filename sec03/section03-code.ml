(* CSE 341, Section 03, Starting file *)

(* three parts:
  1. Tail recursion
  2. Map and filter
  3. Returning functions [did not get to this, will do in class but included here]
*)

(* 1. Tail recursion *)

(* Example of a function already tail-recursive. (Also notice the nested patterns.) *)
let rec second_to_last xs =
  match xs with 
  | []       -> failwith "second_to_last: empty list"
  | _::[]    -> failwith "second_to_last: single-element list"
  | x::_::[] -> x
  | _::xs'   -> second_to_last xs'

(* Example of making a function tail-recursive *)
let rec sum1 xs =
  match xs with
  | [] -> 0
  | i::xs' -> i + sum1 xs'

let sum2 xs =
  let rec f (xs,acc) =
     match xs with
     | [] -> acc
     | i::xs' -> f (xs',i+acc) in
  f (xs,0)

(* For you: count_empty_strings1 : string list -> int counts the number of empty strings in a list of strings.
   Write it without any helper functions.  It will not be tail-recurisve. *)

(* For you: make count_empty_strings2 that is like count_empty_strings1 but tail recursive 
   using a local helper function. *)

(* tail recursion and list order *)

(* try to make this tail recursive -- how can you fix the order? *)
let rec every_other1 xs =
  match xs with
  | [] -> xs
  | _::[] -> xs
  | x::_::xs' -> x :: every_other1 xs' 

(* Note as the solutions file indicates:
   We would generally not make this tail-recursive as doing
   so requires extra work that probably makes it slower and definitely
   more complicated for small and medium size lists.
*)

(* subtle (?) algorithm issue: Why does this version sometimes return the wrong answer?  What's the smallest 
   example test that it fails? *)
let every_other3 xs =
  let rec f (xs,acc) =
    match xs with
    | [] -> acc
    | x::[] -> x::acc 
    | x::_::xs' -> f (xs', x::acc) in
  f (List.rev xs, [])

(* 2. map and filter *)

(* two super-useful higher-order functions on lists
   get very comfortable with what they compute and their types
   these versions are tupled, but soon class will switch to using curried versions
*)
let rec map (f, xs) =
  match xs with
  | [] -> []
  | x :: xs' -> (f x) :: (map (f, xs'))

let rec filter (f, xs) =
  match xs with
  | [] -> []
  | x :: xs' -> if f x then 
                  x :: filter (f,xs')
                else 
                  filter (f,xs')

(* try to implement each of these with 1-2 lines by calling map or filter *)

(* Take a list of ints and return a new list with each int
   divided by 2 -- example done for you
*)
let half_of_all xs = (* done for you *)
  map ((fun i -> i / 2), xs)

(* Take a list of floats and return a new float list with the 
  square root of the absolute value of each float. 
  (Hint: use Float.abs and sqrt) *)
let sqrts_of_abs_all fs = 
  failwith "unimplemented"

(* Take a list of strings and return a new string list with 
  each string capitalized. (Hint: use String.capitalize_ascii) *)
let capitalize ss = 
  failwith "unimplemented"

(* Take a list of pairs and return a list that contains 
  the first element of every pair. *)
let firsts xs = 
  failwith "unimplemented"

(* Take a list of strings and return a string list that contains 
  only non-empty strings from the original list. *)
let no_empty_strings ss = 
  failwith "unimplemented"

(* Take a list of ints and return an int list that contains 
  only ints that are power of 2. 
  You can use the provided funtion is_power_of_two. *)
let rec is_power_of_two i = 
  i > 0 &&
    (i=1 || (i mod 2 = 0 && is_power_of_two (i / 2)))

let only_powers_of_two xs = 
  failwith "unimplemented"

(* Take a list of ints and return an int list by 
  removing all the negative ints. *)
let remove_negatives1 xs = 
  failwith "unimplemented"

(* Take a list of int lists and return a list of int lists 
  by removing all the negative ints. 
  (int list list -> int list list) *)
let remove_negatives2 xss = 
  failwith "unimplemented"

(* 3. returning functions *)
(* this function takes a bool and returns a function (int->int) *)
let double_or_triple1 b =
  if b then (fun x -> 2*x) else (fun x -> 3*x)

let triple = double_or_triple1 false
let sixty = triple 20
let also_sixty = (double_or_triple1 true) 30
let this_too = double_or_triple1 true 30

(* this function takes a function (int->bool) returns a function (int->int) *)
let double_or_triple2 f = 
  if f 7 then (fun x -> 2 * x) else (fun x -> 3 * x)

let roundabout_double = double_or_triple2 (fun x -> x - 3 = 4)
let roundabout_nine = double_or_triple2 (fun x -> x = 42) 3


  