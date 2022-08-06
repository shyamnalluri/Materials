#program to find the second largest number in a list
numbers = [10,5,7,9,22,4]
#numbers.sort()
#print(numbers[-2])
fm = max(numbers[0],numbers[1])
sm = min(numbers[0],numbers[1])
n = len(numbers)
for i in range(2,n):
	if(numbers[i]>fm):
		sm=fm
		fm =numbers[i]
	elif(numbers[i]>sm):
		sm = numbers[i]
		
print('second largest number is',sm)
		
		
		