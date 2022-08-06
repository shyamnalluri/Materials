#program to print prime numbers from 1 to 100
n = 100
primeNumbers = []
for i in range(2,101):
	for j in range(2,i):
		if(i%j==0):
			break
	else:
		#print(i)
		primeNumbers.append(i)
		
print('number of prime numbers in 1 to 100 is',len(primeNumbers),primeNumbers)
		
			







'''for i in range(1,10):
	print(i)
	if(i==5):
		break
else:
	print('Else statement')'''