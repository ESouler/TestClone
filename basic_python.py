print('simple calc')
a = int(input())
b = int(input())
def function(a,b):
    print('choose what calc you want')
    print('1 add')
    print('2 multiply')
    print('3 divide')
    print('4 minus')
    c = int(input())
    if c == 1:
        return a + b
    elif c == 2:
        return a * b
    elif c == 3:
        return a/b
    else:
        return a - b


print(function(a,b))
