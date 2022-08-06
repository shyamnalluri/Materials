#programt to reverse a number
n = int(input('Enter a number')) #351
originalValue = n
#5
#35
#351
reverse = 0
while(n>0):
	num = n%10
	reverse = reverse*10+num
	n = n//10
	
print('Rever of number {} is {}'.format(originalValue,reverse))

