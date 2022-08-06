#program to find the first character that is not repeated
name = input('Enter a name')
#suresh - 6
#ureh - 4
'''for i in name:
	if(name.count(i)==1):
		print('First non repeated character is:',i)
		break'''
foundNonRepeated = False		
while name!="":
	originalNamelen = len(name)
	char = name[0]
	name = name.replace(char,'')
	afterReplaceLen = len(name)
	if(originalNamelen-1==afterReplaceLen):
		print('First non repeated character is',char)
		foundNonRepeated=True
		break

if(foundNonRepeated==False):
	print('no non repeated characters found')
