#types of inheritance

class Class1:
	def join(self):
		print('joined')
		

class Class2(Class1):
	def subscribe(self):
		print('subscribed')
		
		
class Class3(Class1):
	def comment(self):
		print('commented')
		
		
cl3 = Class3()
cl3.subscribe()
cl3.join()
cl3.comment()
