#program to print sum of 1 to n
n = int(input('Enter n value'))
print('entered value',n)

#1,2,3,4,5,6,7,8,9,10
sum = 0
for i in range(1,n+1):
	sum = sum + i
	
print('total sum from 1 to {} is {}'.format(n,sum))
