#OOPS
	
class Bottle:
	"This class is used to create a bottle with so and so parameters"
	#properties/state
	#static/class variable
	companyName ="Sirpa"
	
	#constructor
	def __init__(self,color,capacity):
		self.__color=color
		self.capacity=capacity
		print('constructor')
		
	def __del__(self):
		pass
	
	#functions/behavior
	def wash(self):
		print(self)
		print('washing',self.__color)
		

	def setCap(self):
		print('setcap')
	
	def fillWater():
		print('fill water')


#object creation
print(Bottle.companyName)
bottle1 = Bottle("green",2)
bottle2 = Bottle("pink",3)
bottle3 = Bottle("blue",1)
print(bottle1)
#print(bottle1.color)
print(bottle1.companyName)
bottle1.wash()

print("=========Child class creation========")


class CopperBottle(Bottle):
	
	def __init__(self,color,capacity):
		#Bottle.__init__(self,color,capacity)
		super().__init__(color,capacity)
		print('child constructor')
	def morningWater(self):
		pass
		#print('morning water',self.__color)
		
	def setCap(self):
		print('copper bottle set cap')
		
		

print(CopperBottle.companyName)
copper1 = CopperBottle("orange",7)
copper1.wash()
copper1.morningWater()
copper1.setCap()

print(Bottle.__bases__)
print(CopperBottle.__bases__)











	