#Data types program
print('Data types')

#Numeric (int, float, complex)
marks = 455
percentage = (marks/600)*100
print('percentage',percentage)

print(type(marks))
print(type(percentage))
#x+yj

x = 10 + 5j
y = 11+2j

print(type(x))
print(x.real)
print(x.imag)
print(x.conjugate())
print(x+y)

#Strings

print('Strings')
channelName = "Suresh Techs Channel"
print(len(channelName))
statement = "suresh techs is a youtube channel started in 2020, let's pelase subscribe and motivate sures for more videos"
print("Accessing elements from string")
print(channelName)
print(channelName[-2])
print(channelName[1:4])
print(channelName[5:10:2])
print(channelName[::-1])
channelName="suresh is awesome"
print("hello" not in channelName)

#List
print('===LIST====')
#telugu,maths, social,science, english
marks=[50,20,90,65,98,90]
print(type(marks))
print(marks)
friends=["Nandu","Venkat mohan reddy","Giri","Deepak","Raj mittu"]
print(friends)

dislikers =[]
print(len(dislikers))

bioDataList = [27,"999999","address",friends]
print(bioDataList)
print('second friend',friends[1])
print('last friends',friends[-1])
print(bioDataList[3][2])

marks[1]=55
print(marks)

print(marks + friends)
print(friends*2)

friends.append("Robin")
print(friends)

friends.extend(["Raju","Ramu"])
print(friends)

friends.insert(1,"Hareesh")
print(friends)

friends[1:1]=["a","b","c"]
print(friends)
del friends[1]
print(friends)
friends.remove('b')
print(friends)
print(friends.pop())

marks = (20,50,80,97,67)
print(type(marks))
friends=("Nanadu","Raju","Ramu","Akhil",[20,30,40,50])
print(type(friends))
print(marks[0])
#print(friends[-1.98])

friends[4][0]="asdfasdf"
print(friends)

#Boolean
print('===Boolean===')
subscribed = True
print(type(subscribed))
followed = False
print(type(followed))

a = 0
b = 100

print(type(a==b))
print(bool(a))

print('===SET===')
anchors = {"Udayana banu garu","suma akka","sudhee anna","pradeep anna","Ravi anna","suma akka"}
print(type(anchors))

emptySet = set()
print(type(emptySet))
print(anchors)
anchors.add("Suresh")
print(anchors)
anchors.update(["Raju","Ramu"])
print(anchors)
anchors.discard("Dinesh")
print(anchors)
#anchors.remove("Dinesh")
print(anchors)

print(anchors.pop())

anchors.clear()
print(anchors)


print('UNION')

a = {10,20,30,40}
b = {20,80,70,100}

abUnion = a.union(b) #a | b

print(abUnion)
abIntersection = a.intersection(b) #a & b
print(abIntersection)

abDifference = a.difference(b) # a-b

print(abDifference)
abSymmetricDiff = a.symmetric_difference(b) # a^b
print(abSymmetricDiff)

bioData = {"name":"suresh","address":'so and so','subscribed':True}

print(type(bioData))

information = {"channel":"suresh techs","info":bioData}
print(information)

print(information["channel"])
print(information.get("channel"))

D1 = {12:{'class':'b.come fy','percentage':78.50},
14:{'class':'b.come fy','percentage':30.70},
15:{'class':'b.come fy','percentage':88.50}
}

rollNumber = int(input('Enter your roll number'))
percentage = D1[rollNumber]["percentage"]
if(percentage>40):
	print('passed')
else:
	print('failed')
	

information["channel"]="Suresh is awesome"
information["followed"]=True
print(information)
	
	





































