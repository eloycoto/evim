" Copy this file to $HOME/.vim/ftdetect/ser.vim

func! s:cfgType() 
   let max = line("$") > 200 ? 200 : line("$") 
   for n in range(1, max) 
      if getline(n) =~ '^\s*#!\(KAMAILIO\|OPENSER\|SER\|ALL\|MAXCOMPAT\)' 
         set filetype=ser 
         return 
	 elseif getline(n) =~ '^\s*modparam\s*(\s*"[^"]\+"' 
         set filetype=ser 
         return 
      elseif getline(n) =~ '^\s*route\s*{\s*' 
         set filetype=ser 
         return 
      endif 
   endfor 
   setf cfg 
endfunc

au BufNewFile,BufRead *.cfg   call s:cfgType() 

