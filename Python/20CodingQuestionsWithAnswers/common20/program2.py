#program to reverse a string
name = input('Enter a name')
print('Entered name is:',name)
#suresh
#us
#hserus
#print(name[::-1])

reverse = ""
for i in name:
	reverse = i + reverse
	
print('Reversed value of {} is {}'.format(name,reverse))
	
	
	
