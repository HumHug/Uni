



	// I'm going to implement multiplication as adding R0
	// to itself R1 times.

	// @times will be counting down from R1; when it
	// reaches 0, we jump to the end
	@1
	D=M //ram 1 is copied into D
	@times
	M=D // and now M[times] = R1


	@2
	M=0 //initialize sum to 0
(LOOP)
	// within the loop, if times = 0, need to break out
	@times
	D=M //d = times
	@END
	D; JEQ // if times = 0, break 


	@1
	D=D-A //D = times - 1
	@times
	M=D // and now, times = times-1

	@2
	D=M
	@0
	D=D+M // d = R0 + SUM
	@2
	M=D //and, now sum = sum+R0

	@LOOP
	0;JMP

(END)  //end program
       @END
       0; JMP