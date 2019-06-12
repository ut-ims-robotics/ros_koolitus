Funktsioonid
=================

Sissejuhatus
------------

Selleks, et lihtsustada programmi kirjutamist ja vältida kopeerimist, on olemas funktsioonid. 
Korduvad programmi osad saame kirjutada funktsioonide sisse ning funktsiooni ühe reaga välja kutsuda. 
See parandab loetavust ning teeb edasise programmeerimise lihtsamaks. 
Funktsioonide kohta saab lugeda `progeõpikust <https://progeopik.cs.ut.ee/04_funktsioonid.html>`_. 
Järgneva ülesande eesmärk on kirjutada funktsioonid erimoodi sõitmiseks, et hiljem oleks lihtne ühe käsuga panna robot soovitud suunas sõitma.

Ülesanne - funktsioonid
--------------------------
Implementeeri funktsioon otse sõitmiseks.

1.  Kasuta ROS käsku :code:`roscd` ja navigeeri ROS kimpu :code:`ros_koolitus`.
2.  Ava :code:`nano` abil fail :code:`functions.py`, mille leiad alamkaustast :code:`scripts/`.
3.  Leia failist ala funktsiooni defineerimiseks ja ala funktsiooni välja kutsumiseks.
4.  Implementeeri funktsioon otse sõitmiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit korratakse) ja kiirus
    b.  katseta oma funktsiooni Gazeboga

5.  Implementeeri funktsioon pööramiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit korratakse) ja kiirus
    b.  katseta oma funktsiooni Gazeboga

6.  Implementeeri funktsioon küljele sõitmiseks.

    a.  argumentideks peavad olema kestus (mitu korda *for*-tsüklit korratakse) ja kiirus
    b.  katseta oma funktsiooni Gazeboga

7.  Kasuta Gazebo simulaatorit, et katsetada kõiki neid funktsioone.
8.  Demonstreeri kujundi läbimist juhendajale.
9.  Kui Gazeboga teeb programm seda, mis ette nähtud, siis testi seda robotiga (kas otse sülearvutist või kopeerides programmi robotisse). 

.. tip:: Lõpeta funktsioonid analoogselt eelmise ülesandega kuulutamisega (publish) ning ootamisega (sleep).

