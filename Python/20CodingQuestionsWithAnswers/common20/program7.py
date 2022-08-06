#program to swap numbers without using temporary variable
a = 10
b = 20

'''temp = a
a = b
b = temp
print("a = {}, b = {}".format(a,b))'''

#a+b = 30
#a = 30-b
#b = 30-a
a = a+b #30
b = a-b
a = a-b
print('a = {},b={}'.format(a,b))






