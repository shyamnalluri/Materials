#program to check the numbers of occurances of a character in a string

name = input('Enter a name')
character = input('Enter a character')
#print(name.count(character))

count = 0
for i in name:
	if(character==i):
		count=count+1
		
print('count of {} is {}'.format(character,count))
