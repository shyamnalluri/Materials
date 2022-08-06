#program to get the matching characters in a string
name = "suresh"
print(name.count('0'))
matchingCharacters = set()
for i in name:
	if(name.count(i)>1):
		matchingCharacters.add(i)
		
print(matchingCharacters)