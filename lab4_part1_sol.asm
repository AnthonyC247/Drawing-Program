
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#since this is leaf function, no need to preserve ra 
	
	#Enter code below!
	#make sure to return to calling function after putting correct value in a0!
	
	#Assume a0 and a1 are already loaded with the values x,y
	
	
	#For every x add a 4
	#For every y, add a 128
	#ax + by for every...
	
	#2^x => 2^4 find a way to shift by left, by x coordinate
	#2^128 => y/2 until no longer divisible. Find a way to shift by left, y coordinate 
	# add a0 = a1 + a0
	# add a0 = a2 + a0
	#return a0
	

	slli a1, a1, 7 #2^7 = 128, the amount of bytes to move our y coordinate in menory. Why 7? It is a much simpler number to move bytes
	slli a0, a0, 2 #2^2 = 4 Shift left by 4 bits for register a0 our x coordinate 
	
	add a0, a2, a0 # Add the base address, a2 and x coordinate a0 to return to a0 pixel address. a0 = a2 + a0
	add a0, a0, a1
	 #Add the y coordinate, a1 and x coordinate a0 to return to a0 pixel address. a0 = a1 + a0
	ret
	
	
	
	
	
	
	
	
	
					
