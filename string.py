import string
mystr = 'this is a:string.hello:my string.this is ! best.world hello'

for c in string.punctuation:

        mystr = mystr.replace(c," ")

d=mystr.split(' ')

print(d)

