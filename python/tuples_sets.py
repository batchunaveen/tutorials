# A tuple is a collection which is orderd and unchangeable, Allows duplicate members.


# Create tuple 
fruits = ('Apples', 'Oranges', 'Grapes')

# fruits2 = tuple(('Apples','Oranges','Grapes'))
fruits2 = ('Apples', )


# Get value 
print(fruits[1])

# Can't change values 
#fruits[0] = 'Pears'

# Delete tuple 
del fruits2 

# Get length 
print(len(fruits))


# A Set is a collection which is unordered and unindexed. No duplicate members.

# Create Set 

fruits_set = {'Apples', 'Oranges', 'Mango'}

# Check if in set 
print('Apples' in fruits_set)

# Add to set 
fruits_set.add('Grape')

fruits_set.remove('Grape')

fruits_set.clear()

# Delete 
del fruits_set

print(fruits_set)