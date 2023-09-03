#in this section of code, you must direct the new position of the pixel based on the label we branched to in lab4.asm

#remember at this point, (x,y) coordinates are in a0,a1 registers respectively
#do the appropriate change in a0 a1 values based on the labels below.

#within each label, make sure to jump to the final line in this .asm file. 
#This is so that exactly one of the labels moveleft,moveright, movedown, moveup is executed depending on which key user enetered as defined in lab4.asm

#NOTE: To make sure you ONLY use a0,a1 registers in your instructions below. There is no need to involve any other rgeister in this section of code!

#HINT: make sure to jump to the correct label within lab4.asm within each of the sections: moveleft, movedown,moveright,moveup,moveDiagonalLeftUp,moveDiagonalLeftDown,
#  ,moveDiagonalRightUp and moveDiagonalRightDown
#that is, each jump instruction at teh end of each section would look like "j <lab4.asm label name>"

#Assume a0 and a1 are already loaded with the values x,y
	
	#Created by: Carmona Anthony
	#CruzID: 1932712
	#2 June, 2023
	
	#Assignment: Lab 4: Paint Application
	#Description: This program allows users to interact with the following keys; w,a,s,d,q, etc. to draw a pattern over Bitmap display.
	
	#Notes: This program is intended to be run from RISCV Assembler, Keyboard and Display along with the Bitmap Display
	
	#The following code was developed in high level abstraction under the following:
	#TA Vaibhav
	#TA Majid
	#Tutor Ian
	#If there are any questions or concerns please contact them

moveleft:
	#enter code here
	addi  a0, a0, -1
	j newPosition
	
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
movedown:
	#enter code here
	addi a1, a1, 1
	j newPosition
	
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
moveright:
	#enter code here
	addi a0, a0, 1
	j newPosition
	
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
moveup:
	#enter code here
	addi a1, a1, -1
	j newPosition
	
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
moveDiagonalLeftUp:
	#enter code here
	addi a0, a0, -1
	addi a1, a1, -1
	j newPosition
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
moveDiagonalLeftDown:
	#enter code here
	addi a0, a0, -1
	addi a1, a1, 1	
	j newPosition	
		
 	#now let's jump to correct label in lab4.asm1
 	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
 	
moveDiagonalRightUp:
	#enter code here
	addi a0, a0, 1
	addi a1, a1, -1
	j newPosition
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement
moveDiagonalRightDown:
	#enter code here
	addi a0, a0, 1
	addi a1, a1, 1
	j newPosition
	#now let's jump to correct label in lab4.asm
	#j <lab4.asm label name>
	#in above comment, insert correct label name from lab4.asm
	#then remove '#' symbol from the j statement

