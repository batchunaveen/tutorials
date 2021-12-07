class User:  
    def __init__(self, name, email, age):
        self.name = name
        self.email = email
        self.age = age 
    
    def greetings(self):
        return f'My name is {self.name} and I am {self.age}'

    def has_birthday(self):
        self.age += 1 

# Init user object 
naveen = User('Naveen', 'naveen@gmail.com',31)

naveen.has_birthday()
print(naveen.greetings())