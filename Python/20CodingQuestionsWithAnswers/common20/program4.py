#program for factorial of a number

n = int(input('Enter n'))

if(n<0):
	print('invalid number')
elif(n==0):
	print('factorial of 0 is 1')
else:
	mul=1
	#1*2, 2*3, 6
	#1*2*3*4*5
	for i in range(1,n+1):
		mul = mul * i
		
	print('Factorial of {} is {}'.format(n,mul))
		
		
		
		