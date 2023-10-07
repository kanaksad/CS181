(* Welcome to Section 2! *) 

let swap (pr : int * int) = (*TO_DO*)

let sum_of_all_pairs ((pr1 : int * int),(pr2 : int * int)) = (*TO-DO*)

let sort_pair (pr : int * int) = (*TO_DO*)

let fst3 (x,_,_) = x (* gets the first element of a triple *)
(* gets the second element of a triple *)
(*TO_DO*)
(* gets the third element of a triple *)
(*TO-DO*)

(* Synonym for dates in Day, Month, Year format *)
type date = int * int * int
let date1 : int * int * int = (22, 2, 1900)
let date2 : date = (11, 1, 1900)
let date3 = (17, 1, 2019)

(*write a function to get the day*)
let get_day((random_day: date)) = (*TO_DO*)
(*write a function to get the month*) 
let get_month((random_day: date)) = (*TO-DO*)
(*write a function to get the year*)
let get_year((random_day: date)) = (*TO-DO*)

(*write a function to get the date in string format*)
let date_to_string((d: int * int * int)) = (*TO_DO*)


(* Convert date format from (Day, Month, Year) to (Month, Day, Year) *)

let dmy_to_mdy (d : int * int * int) = (*TO-DO*)
let date_to_string_mdy((d: int * int * int)) = (*TO-DO*)

(* B. For dates: *)
let dmy_to_mdy2 (d : date) = (*TO-DO*)
let date_to_string_mdy2((d: date)) = (*TO-DO*)

let get_size((numbers: int list)) = (*TO_DO*)

let get_nth((numbers: int list)) = (*TO-DO*)

let rec countdown((n:int)) = (*TO_DO*)

(* ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"] *)
let get_day_of_the_week((n: int)) = (*TO-DO*)

let rec list_of_range((starts: int), (ends: int)) = (*TO-DO*)

let rec countup (n:int) = (*TO_DO*)

let list1 = ["hi"; "bye"]
let list1_ = "hi" :: ["bye"]
let list1__ = "hi" :: "bye" :: []
let list2 = ["programming"; "languages"]
let list3 = [1; 2]
let list4 = [3; 4; 1]


let sum_of_heads((numbers1: int list), (numbers2: int list), (numbers3: int list)) = (*TO_DO*)

let string_of_heads((numbers1: int list), (numbers2: int list), (numbers3: int list)) = (*TO-DO*)

(* Append two string lists *)
(* Type: string list * string list -> string list *)
let rec append ((xs : string list), (ys : string list)) =
    if xs = [] then
      ys
    else 
      (*TO_DO*)

let rec sum_of_list((numbers: int list)) = (*TO-DO*)

let rec string_of_list((numbers: int list)) = (*TO-DO*)


(* B. What types of list will this function work for?
       All list types!!!
*)
(* Type: 'a list * 'a list -> 'a list *)
let rec append (xs, ys) =
    if xs = [] then
      ys
    else 
      (*TO-DO*)

let okay1 = append (list1, list2)
let okay2 = append (list4, list3)
(* let not_okay = append (list1, list3) *)