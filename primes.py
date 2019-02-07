"""
Your module documentation here
"""
class Prime_class(object):
    """
    Your class documentation here
    """
def isPrime(num_in):
    if num_in < 1:
        return False
    elif num_in == 2:
        return True
    else:
        for i in range(2, num_in):
            if num_in % i == 0:
                return False
        return True            

def inicio():
    num = int(input('Ingrese un numero entero: '))
    result = isPrime(num)
    response = bool(result)
    print(response)
if __name__ == '__main__': inicio()