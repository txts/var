BEGIN { First = 1
        In = 1}
/^"""</,/^>"""/ { next }

/^"""/ { In = 1 - In
         if (In) 
	            print "````{.python}"
         else
	           if (First)
                 First = 0
             else
               print "````"
         next
       }
! First { print $0 }
END { if (In) print "````" }

 