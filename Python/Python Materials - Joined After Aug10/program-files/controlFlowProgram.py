#Control flow program
'''lastBall = 6
	
print('won the match') if(lastBall==6) else print('lost the match')

#program to check whether a number is odd or even'''

'''number = int(input('Enter a number'))

if(number%2==0):
	if(number%4==0):
		print('Congrates, divided by both 2 and 4')
	else:
		print('Sorry')
else:
	print('Sorry')'''
	
	
#Program for btech admissions
'''rank = int(input('Enter your rank'))

if rank<=1000:
	print('you got college1')
elif rank>1000 and rank<=10000:
	print('you got college2')
elif rank>10000 and rank<=40000:
	print('you got college3')
else:
	print('Sorry no colleges available of your rank')'''


#print(range(10))

'''numbersList = [1,2,3,10,19,30]
for number in numbersList:
	print(number*5)
	
name = "suersh"
for character in name:
	print(character)'''
	
	
'''for item in range(100,0,-1):
	print(item)'''
	
'''name = input('Enter your name')
#print(name[-2:])
lastTwoCharacters = name[-2:] 

for number in range(1,11):
	print(lastTwoCharacters*number)'''
	
'''name = input('Enter your name')

vowelsList = ['a','e','i','o','u']

for character in name:
	if character in vowelsList:
		print(character,'-Found vowel')
		break
	
for i in range(10):
	print(i)'''
	
'''marks = [50,67,40,90,30,98]
sum=0
for mark in marks:
	sum = sum+mark
	
print('Total sum',sum)'''

'''i = 1
while i<=10:
	print(i)
	i=i+1'''

import random

score = 0
scoreInfo = []
while score<500:
	scoreValue = random.randint(1,30)
	score = score + scoreValue
	scoreInfo.append(scoreValue)
	
print('Total Flips',len(scoreInfo),scoreInfo,score)




	
	
	
	

	
	

	

	










	

	



	
	
