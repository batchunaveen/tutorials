# A List is a collection which is ordered and changable. Allows duplicate members.

# Create List 

numbers = [1,2,3,4,5]
fruits = ['Apples','Oranges','Grapes','Pears']
# Use a constructor

# Get a value 
print(fruits[1])

# Get length 
print(len(fruits))


# Append to list 
fruits.append('Mangos')

fruits.remove('Grapes')

# Insert into position 

fruits.insert(2, 'Streawberries')

# Remove with pop 
fruits.pop(2)

# Change values
fruits[0] = 'Blueberries'

# Reverse list 
fruits.reverse()

# Sort List 
fruits.sort()

print(fruits)
