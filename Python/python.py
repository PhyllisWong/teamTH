def finance(n):
    savings = 0
    for weeks in range(n+1):
        for days in range(weeks, n+1):
            savings += weeks + days
    print(savings)
    return savings

# finance(5)

'''It's pretty straightforward. Your goal is to create a function that removes
the first and last characters of a string. You're given one parameter. You don't
have to worry with strings with less than two characters.'''

def remove_char(s):
    if len(s) <= 2:
        return ''
    else:
        return (s[1:-1])
    #your code here
remove_char('abracadabra')
