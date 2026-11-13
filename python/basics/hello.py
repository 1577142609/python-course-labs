num=int(input("Enter a number: "))

hunderds=num//100
tens=(num//10)%10
ones=num%10

result=hunderds+tens+ones
print("The sum of the digits is:",result)
