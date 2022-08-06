#finding missing number in a list of integers
numbers = [1,2,4,5,6,7,8,9,10]
n = len(numbers)+1

totalSum = n*(n+1)//2
print('total sum is',totalSum)

sum = 0
for i in numbers:
	sum = sum+i

print('missing number is:',	totalSum-sum)
