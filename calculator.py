"""
Your module documentation here
"""


class Calculator_class(object):
    """
    Your class documentation here
    """

def suma(num_list):
    """
    Your method documentation here
    """
        # your sum code here
    result = 0
    for num in range(0,len(num_list)):
        result = result + num
    return result

def inicio():
    list = []
    for bucle in range(0,5):
        num = int(input('Ingrese un numero:'))
        list.append(num)
    result = suma(list)
    print(result)
if __name__ == '__main__': inicio()
