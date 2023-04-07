let reverse_numbers num =
  let rec helper acc n =
    if n = 0 then acc
    else helper ((acc * 10) + (n mod 10)) (n / 10)
  in
  helper 0 num;;

let () =
  if Array.length Sys.argv < 2 then
    Printf.printf "Usage: %s <number>\n" Sys.argv.(0)
  else
    let num = int_of_string Sys.argv.(1) in
    let result = reverse_numbers num in
    Printf.printf "%d\n" result;;