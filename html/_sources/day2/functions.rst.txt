Funktsioonid
=================

Sissejuhatus
------------

Selleks, et meil oleks kergem koodi kirjutada ja et me ei peaks koodi kopeerima, on olemas funktsioonid. 
Korduva koodi saame kirjutada funktsioonide sisse ning funktsiooni ühe reaga välja kutsuda. 
See parandab koodi loetavust ning teeb edasise programmeerimise lihtsamaks. 
Funktsioonide kohta saab lugeda `progeõpikust <https://progeopik.cs.ut.ee/04_funktsioonid.html>`_. 
Järgneva ülesande eesmärk on kirjutada funktsioonid erimoodi sõitmiseks, et hiljem oleks lihtne ühe käsuga panna robot soovitud suunas sõitma.

Ülesanne - funktsioonid
--------------------------

1.  Ava terminal ning loo ssh-ühendus robotisse.
2.  Ava **nano**'ga fail **praktikum2_functions.py**, kasutades analoogset käsku nagu eelmises ülesandes.
3.  Koodis on ära märgitud alad, mida pead muutma. PS: Funktsioon peab analoogselt eelmise ülesandega lõppema kuulutamisega (publish) ning ootamisega (sleep).
4.  Kui oled vahepeal draiveri terminali sulgenud, siis jätka punktiga a. Kui see eelmisest ülesandest veel käib, mine otse punkti juurde nr 5.

    a.  Ava uus terminal ning loo ssh-ühendus robotisse.
    b.  Uues terminalis sisesta 

        **roslaunch robotont_teleop teleop_bare.launch**
       
5.  Koodi jooksutamiseks kasuta analoogset **rosrun** käsku nagu eelmises ülesandes, kuid vaheta failinimi, mida jooksutad. Peatamiseks vajuta samas terminalis korraga klahve **Ctrl + C**.


6.  Implementeeri funktsioon otse sõitmiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit kordad) ja kiirus
    b.  katseta oma funktsiooni

7.  Implementeeri funktsioon pööramiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit kordad) ja kiirus
    b.  katseta oma funktsiooni

8.  Implementeeri funktsioon küljele sõitmiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit kordad) ja kiirus
    b.  katseta oma funktsiooni

9.  Kasutades neid funktsioone, pane robot sõitma mööda oma valitud kujundit.


.. .. include:: ../include/afterthelab.rst
