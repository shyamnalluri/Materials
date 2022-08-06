#program to print number of vowels and consonants in a string
name = input('Enter a name')
vowelsList = ['a','e','i','o','u']
vowelsCount =0
consonantsCount = 0

for i in name:
	if(i in vowelsList):
		vowelsCount=vowelsCount+1
	else:
		consonantsCount= consonantsCount+1
	
print('Number of vowels: {}, Number of consonants: {}'.format(vowelsCount,consonantsCount))
	