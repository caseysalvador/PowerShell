'''
Author: Casey Salvador
Password Generator
Description: Generates a randomize password containing uppercase and lower case including numbers and symbols.
Program will ask how many passwords you would like to create then the length of the password.
'''

import random

chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890`~!@#$%^&*()_+-=[]\{}|;':"",./<>?"

numPassword = input('How many passwords would you like to create? ')
numPass = int(numPassword)
passLength = input('Please enter the length of your password? ')
passLen = int(passLength)
for i in range(numPass):
    password = ''
    i+=1
    for j in range(passLen):
        password += random.choice(chars)
    print("Password " + str(i) + " : " + password)



    Foreach ($i in $passLength)
    {
        $password += ($chars = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","`"","~","!","@","#","$","%","^","&","*","(",")","_","+","-","=","[","]","\","{","}","|",";","'",":",""",""",",",".","/","<",">","?","") | Get-Random -Count "$passLength"
        Write-Host "'Password ' + $password"
    }

    
Get-Random #this will pull random characters



$passLength = Read-Host -Prompt 'Please enter the length of your password? '
$password = ($chars = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","`"","~","!","@","#","$","%","^","&","*","(",")","_","+","-","=","[","]","\","{","}","|",";","'",":",""",""",",",".","/","<",">","?""") | Get-Random -Count $passLength
Write-Host "Password: + $password"