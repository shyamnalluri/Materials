from datetime import date
#Operatos program
print('Operators program')

#Arithmetic operators

a = 7
b = 3
print('addition',a+b)
print('subtraction',a-b)
print('multiplication',a*b)
print('divison',a/b)
print('flooring',a//b)
print('remainder',a%b)
print('power',a**b)


yearOfBirth = int(input('Please tell your date of year'))
currentYear = date.today().year

age = currentYear - yearOfBirth
print('your age is:',age)








