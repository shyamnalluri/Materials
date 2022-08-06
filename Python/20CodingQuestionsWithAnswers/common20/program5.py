#program to check wheter a number is armstrong
'''n = int(input('Enter a number'))
#153
toString = str(n)
sum = 0
for i in toString:
	#sum = sum + int(i)*int(i)*int(i)
	#sum = sum + pow(int(i),3)
	sum = sum+(int(i)**3)
	
if(n==sum):
	print('it is armstrong')
else:
	print('it is not armstrong')'''
	

n = int(input('Enter a number'))
originalValue = n
#153
cube = 0
while(n>0):
	num = n%10
	cube = cube + pow(num,3)
	n = n//10
	print(n)

print(cube)
if(originalValue==cube):
	print('It is armstrong')
else:
	print('It is not armstrong')






