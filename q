   let rec pe0001 n =
     if n = 0  then 0
     else if n mod 5 = 0 then n + pe0001 (n - 1) 
     else if n mod 3 = 0 then n + pe0001 (n - 1)
     else pe0001(n - 1)
     ;;

   let main () =
	if Array.length Sys.argv <> 2 then 
	begin
		print_string "Usage: pe0001 <number>";
		print_newline()
	end else 
	begin
     		try
        	print_int (pe0001 (int_of_string Sys.argv.(1)));
         	print_newline ()
     		with Failure "int_of_string" -> print_string "Bad integer constant";
         	print_newline ()
   	end
   	;;
	if !Sys.interactive then () 
	else main ();;
