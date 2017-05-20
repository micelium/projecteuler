   let est_pair x = match (x mod 2) with
    0 -> true
    |_ -> false;;

   let pe0002 l = 
     let  r = ref 0 in
     let  f1 = ref 1 in
     let  f2 = ref 1 in
     let  f3 = ref 2 in

	while !f3 < l do
		if est_pair !f3 then r := !r + !f3;
		f1 := !f2 ;
		f2 := !f3 ; 
		f3 := !f1 + !f2 ;
		done;
	!r;;

   let main () =
	if Array.length Sys.argv <> 2 then 
	begin
		print_string "Usage: pe0002 <number>";
		print_newline()
	end else 
	begin
     		try
        	print_int (pe0002 (int_of_string Sys.argv.(1)));
         	print_newline ()
     		with Failure "int_of_string" -> print_string "Bad integer constant";
         	print_newline ()
   	end
   	;;
	if !Sys.interactive then () 
	else main ();;
