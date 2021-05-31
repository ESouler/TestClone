print('This is a basic stupid calculator')
a = int(input('Enter First number'))
b = int(input('Enter Second Number'))

def function(a,b):
    print('choose what action do you want')
    print('1. add')
    print('2. multiply')
    print('3. divide')
    print('4. minus')
    c = int(input())
    if c == 1:
        return a + b
    elif c == 2:
        return a * b
    elif c == 3:
        return a/b
    elif c == 4:
        return a - b
    else:
        print('No action')

print(function(a,b))
