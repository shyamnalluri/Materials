#program to check if two strings are anagrams
name1 = input('Enter name 1')
name2 = input('Enter name 2')

if(len(name1)==len(name2)):
	if(sorted(name1)==sorted(name2)):
		print('These are anagrams')
	else:
		print('These are not anagrams')
else:
	print('These are not anagrams')