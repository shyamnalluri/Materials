#Exception handling
import sys
class Join:
	def __init__(self):
		print('constructor')
		
	def welcome(self):
		print('welcome')
		
	def __del__(self):
		print('destructor')
	
	def members(self):
		try:
			members = ["nandu","pranay","raju"]
			print(members[3])
		except IOError:
			print('excute')
		except ImportError:
			print('import error')
		
		else:
			print('all good')
		finally:
			print('everytime I will call')

j1 = Join()
j1.welcome()
j1.members()