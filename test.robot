***Settings***
Library    BuiltIn
Library    OperatingSystem
Library    ./calculator.py  # Polku Python-tiedostoosi

***Test Cases***
Testaa Summa
    ${RESULT}=    Perform Sum    5    3
    Should Be Equal    ${RESULT}    Laskutoimituksen tulos: 8

Testaa Miinus
    ${RESULT}=    Perform Minus    10    4
    Should Be Equal    ${RESULT}    Laskutoimituksen tulos: 6

Testaa Tulo
    ${RESULT}=    Perform Product    7    6
    Should Be Equal    ${RESULT}    Laskutoimituksen tulos: 42

Testaa Jako
    ${RESULT}=    Perform Deviation    15    3
    Should Be Equal    ${RESULT}    Laskutoimituksen tulos: 5.0
