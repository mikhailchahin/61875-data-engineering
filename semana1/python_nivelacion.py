# - Escribir un programa que lea un número impar por teclado. Si el usuario no introduce un número impar, debe repetirse el proceso hasta que lo introduzca correctamente.

# - Escribir un programa que pida al usuario cuántos números quiere introducir. Luego que lea todos los números y realice una media aritmética.

# - Utilizando la función range() y la conversión a listas generar las siguientes listas dinámicamente:
#     * Todos los números del 0 al 10 [0, 1, 2, ..., 10]
#     * Todos los números del -10 al 0 [-10, -9, -8, ..., 0]
#     * Todos los números pares del 0 al 20 [0, 2, 4, ..., 20]
#     * Todos los números impares entre -20 y 0 [-19, -17, -15, ..., -1]
#     * Todos los números múltiples de 5 del 0 al 50 [0, 5, 10, ..., 50]


import statistics

def main():

    flag:bool = True

    while flag:
        number = input(">> Insert a numnber:\n")
        number = int(number)
        if number%2 != 0:
            flag = not flag
        else:   
            print(">> Even number has been inserted")
    else:
        print(">> Odd number inserted")

def main_second():
    amount_number:int   = int(input(">> The number of digits to be inserted:\n"))
    number_list:list    = []

    for _ in range(amount_number):
        number_inserted = int(input(">> Number to be inserted: "))
        number_list.append(number_inserted)

    print(">> Median: " , statistics.median(number_list))


def main_third(): 
    _inner_transform_list = lambda range_data : list(range_data)
    list_ranges =[
        _inner_transform_list(rango)
        for rango in 
        [range(11),range(-10,1),range(0,21,2),range(-19,0,2),range(0,51,5)]
    ] 

    for  _ in list_ranges:
        print(_)

def main_fourth():
    print(sum([ _ for _  in range(101) if n%2 != 0]) )

def main_fifth():
    pass

if __name__ == "__main__" :
    main_fourth()