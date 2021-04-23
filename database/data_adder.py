import mysql.connector
from mysql.connector import Error
import random
from random_words import RandomWords        # https://github.com/tomislater/RandomWords

nicks = RandomWords()

# mysql://b5d3a39da1737e:f62e1752@us-cdbr-east-03.cleardb.com/heroku_e5db01dce17010c?reconnect=true

def connectToDB():
    try:
        connection = mysql.connector.connect(
            host = 'us-cdbr-east-03.cleardb.com',
            user = 'b5d3a39da1737e',
            password = 'f62e1752',
            port = 3306,
            database = 'heroku_e5db01dce17010c'
        )
        print('MySQL Database connection successful')
    except Error as err:
        print(f'Error: "{err}"')

    return connection

connection = connectToDB()
cursor = connection.cursor()

# Come from predefined values in Unity dropdowns during register
states = ['Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Ciudad de México', 'Durango', 'Estado de México', 'Guanajuato', 'Guerrero', 'Hidalgo', 'Jalisco', 'Michoacán', 'Morelos', 'Nayarit', 'Nuevo León', 'Oaxaca', 'Puebla', 'Querétaro', 'Quintana Roo', 'San Luis Potosí', 'Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatán', 'Zacatecas']
genders = ['Femenino', 'Masculino', 'Otro']
schoolLevels = ['Primaria', 'Secundaria', 'Preparatoria', 'Actualmente no estudio', 'Otro']

# Assign random values :3
for i in range(300):
    query = (f'insert into users (alias, age, state, gender, schoolLevel, biology, chemistry, physics, engineering, tech, math, score) values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);')
    
    alias = nicks.random_word()
    age = random.randrange(4,22)
    state = states[random.randrange(0, len(states))]
    gender = genders[random.randrange(0,3)]
    schoolLevel = schoolLevels[random.randrange(0, 5)]
    bio = random.randrange(0,3)
    chem = random.randrange(0,3)
    phys = random.randrange(0,3)
    engi = random.randrange(0,3)
    tech = random.randrange(0,3)
    math = random.randrange(0,3)
    score = random.randrange(0,40)

    val = (alias, age, state, gender, schoolLevel, bio, chem, phys, engi, tech, math, score)
    cursor.execute(query, val)

connection.commit()
connection.close()