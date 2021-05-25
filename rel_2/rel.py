''' Important imports (lol) '''

import numpy as np
import pandas as pd
import scipy.interpolate as si
import matplotlib.pyplot as plt
import math

''' Numpy Arrays '''

subsarrays = np.arange(2, 100, 1)

''' Functions that I will (probably) use '''

def mod_young_exp1(l, k, d, b):
    mod_young = (4 * l**3) / (k * (d * 0.001)**3 * (b * 0.001)) 
    return mod_young

def error_mod_young_exp1(l, k, d, b, el, ed, eb):
    error_mod_young = ((12 * el * l ** 2) / (k * (d * 0.001) ** 3 * (b * 0.001))) + ((4 * eb * l ** 3) / (k * (d * 0.001) ** 3 * (b * 0.001) ** 2)) + ((12 * ed * l ** 3) / (k * (d * 0.001) ** 4 * (b * 0.001)))
    return error_mod_young

def mod_young_exp2(f, k, d, b):
    mod_young = (4 * f) / (k * (d * 0.001)**3 * (b * 0.001))
    return mod_young

def slope(arrayx, arrayy, type, pot):

    reglinear = np.polyfit(arrayx, arrayy, pot)

    if(type == 'log'): 
        slopevalue = (math.log10(np.polyval(reglinear, arrayx)[-1]) - math.log10(np.polyval(reglinear, arrayx)[0])) / (math.log10(arrayx[-1]) - math.log10(arrayx[0]))
    else:
        slopevalue = (np.polyval(reglinear, arrayx)[-1] - np.polyval(reglinear, arrayx)[0]) / (arrayx[-1] - arrayx[0])

    return slopevalue

def trunc_up(number, decimals=0):
    """
    Returns a value truncated to a specific number of decimal places.
    """
    if not isinstance(decimals, int):
        raise TypeError("decimal places must be an integer.")
    elif decimals < 0:
        raise ValueError("decimal places has to be 0 or more.")
    elif decimals == 0:
        return math.ceil(number)

    factor = 10.0 ** decimals
    return math.ceil(number * factor) / factor

def trunc_down(number, decimals=0):
    """
    Returns a value truncated to a specific number of decimal places.
    """
    if not isinstance(decimals, int):
        raise TypeError("decimal places must be an integer.")
    elif decimals < 0:
        raise ValueError("decimal places has to be 0 or more.")
    elif decimals == 0:
        return math.ceil(number)

    factor = 10.0 ** decimals
    return math.trunc(number * factor) / factor

def plotGraph(arrayx, arrayy, limx, limy, labelx, labely, titlegraph, legendgraph, type, pot):
    fig = plt.figure()
    ax = fig.add_subplot()

    reglinear = np.polyfit(arrayx, arrayy, pot)

    ax.plot(arrayx, arrayy, 'o', label='dots')

    if(type == 'log'):
        x_values = [arrayx[0], arrayx[-1]]
        y_values = [np.polyval(reglinear, arrayx)[0], np.polyval(reglinear, arrayx)[-1]]
        ax.plot(x_values, y_values, 'r--')
    else:
        ax.plot(arrayx, np.polyval(reglinear, arrayx), 'r--')

    ax.set_xscale(type)
    ax.set_yscale(type)

    ax.set_xlim(limx[0], limx[1])
    ax.set_ylim(limy[0], limy[1])

    ax.set_xlabel(labelx, fontsize='12')
    ax.set_ylabel(labely, fontsize='12')
    ax.set_title(titlegraph, fontsize='12')

    plt.legend(legendgraph, loc='best')

    plt.grid(True, which="both", ls="-")
    plt.show()

''' Initial Variables '''

path = r"‪e:\xande\USP\FiscI\rel2.xlsx" # Colleting data from...
gravity = 9.81 # I guess the name it's ok...

# variables common to the two experiments

b = 25.35 # largura em milimetros (lembrar de converter)
d = 1.00 # espessura em milimetros (lembrar de converter)
deltab = 0.05 * (10 ** -3)
deltad = 0.01 * (10 ** -3)
deltal = 0.1 * (10 ** -2)

db_exp1 = pd.read_excel(path.strip("‪u202a"), header=[1], usecols = "A:C", nrows=7, sheet_name="exp1_table_1_m_F_x") # database for first experience
db_exp2 = pd.read_excel(path.strip("‪u202a"), header=[1], usecols = "A:F", nrows=10, sheet_name="exp2_table_L_L3_x") # database for second experience

mass_exp1 = db_exp1['massa'].values
force_exp1 = db_exp1['forca'].values
bar_def_exp1 = db_exp1['def_barra'].values
length_exp1 = db_exp2.length[0]

mass_exp2 = trunc_down(db_exp1.massa[4], 5)
force_exp2 = mass_exp2 * gravity
length_exp2 = db_exp2['length'].values
cubiclength_exp2 = db_exp2['cubiclength'].values
bar_def_exp2 = db_exp2['bar_def'].values
length_exp2_cm = db_exp2['length_cm'].values
bar_def_exp2_mm = db_exp2['bar_def_mm'].values
cubiclength_exp2_potneg3 = db_exp2['cubiclength_'].values


################################################ Calculate and Ploting exp1 ################################################

# Ploting

plotGraph(force_exp1, bar_def_exp1, [0, 4], [0, 0.06], 'F (N)', 'x (m)', 'Gráfico 1: x por F', ['Dados coletados', 'Melhor curva para dos dados'], 'linear', 1)

# Calculate

slope_exp1 = slope(force_exp1, bar_def_exp1, 'linear', 1)
print(slope_exp1)

exp1_mod_young = mod_young_exp1(length_exp1, slope_exp1, d, b)
exp1_error_mod_young = error_mod_young_exp1(length_exp1, slope_exp1, d, b, deltal, deltad, deltab)

print(exp1_mod_young, exp1_error_mod_young)
print(trunc_up(exp1_mod_young / 10 ** 10, 1), trunc_down(exp1_error_mod_young / 10 ** 10, 1))

################################################ Calculate and Ploting exp2-part1 ################################################

# Ploting

plotGraph(length_exp2_cm, bar_def_exp2_mm, [10, 30], [10, 40], 'L (cm)', 'x (mm)', 'Gráfico 2: x por L', ['Dados coletados', 'Melhor curva para dos dados'], 'log', 3)

# Calculate

slope_exp2_part1 = slope(length_exp2_cm, bar_def_exp2_mm, 'log', 3)
print(slope_exp2_part1)

################################################ Calculate and Ploting exp2-part2 ################################################

# Ploting

plotGraph(cubiclength_exp2_potneg3, bar_def_exp2_mm, [0, 20], [10, 40], r'$\ L ^ 3 \ \ (10 ^ {-3} \ \ m ^ 3) $', r'$\ x \ \ (10 ^ {-3} \ \ m ) $', r'$\ Gráfico 3: x \ \ por \ \ L ^ 3 $', ['Dados coletados', 'Melhor curva para dos dados'], 'linear', 1)

# Calculate

slope_exp2_part2 = slope(cubiclength_exp2_potneg3, bar_def_exp2_mm, 'linear', 1)
print(slope_exp2_part2)

# exp2_mod_young = mod_young_exp2(force_exp2, slope_exp2_part2, d, b)
# print(exp2_mod_young)


