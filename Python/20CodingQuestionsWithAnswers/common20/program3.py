#program to check whether a string is palindrome or not
name = input('Enter a string/name')
print('orignal string',name)
reversedValue = name[::-1]
print('reversed string',reversedValue)

if(name==reversedValue):
	print('it is palindrome')
else:
	print('it is not a palindrome')
