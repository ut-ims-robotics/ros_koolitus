*For*- ja *while* tsüklid roboti juhtimisel
===========================================

Sissejuhatus
------------

Eelmiste ülesannete juures andsime robotile ainult ühe käsu, mille järgi ta siis sõitis. Aga mis siis, kui tahame näiteks alguses otse sõita ja siis paremale ning jälle otse ja paremale ja korrata neid erinevaid käske?
Selleks on programmeerimises olemas tsüklid. *while*-tsüklit, ehk lõpmatut tsüklit kasutasid juba tegelikult eelmistes ülesannetes. Kiiruse muutmise käsku edastati robotile korduvalt, seni kuni kood käis. 
Robotile on turvalisuse eesmärgil sisse ehitatud nn *failsafe*, mis jätab roboti seisma, kui poole sekundi jooksul käsku ei tule. 
Nüüd tahame aga öelda talle ühte käsku kindel arv kordi ja siis teist käsku kindel arv kordi. Siinkohal tuleb appi `for-tsükkel <https://progeopik.cs.ut.ee/07_listid.html>`_.
*for*-tsükkel jooksutab käske täpselt nii palju, kui sellele öelda.

Näide
-----

Pythonis saame seda kasutada nii:

.. code-block:: python

    for i in range(0,30):
      vel_msg.linear.x = 0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)

See kood ütleb iga 0.1 sekundi tagant robotile, et ta sõidaks edasi kiirusega 0.2 *m/s* ja seda täpselt 30 korda.

Kui me lisame teise *for*-tsükli sinna otsa, siis järgmised 30 korda öeldakse robotile, et ta sõidaks kiirusega 0.2 *m/s* tagasi.

.. code-block:: python

    for i in range(0,30):
      vel_msg.linear.x = 0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)
    for i in range(0,30):
      vel_msg.linear.x = -0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)

Nii saab erinevaid käske üksteise otsa lisada. Muutes :code:`range(0,30)` numbrit 30, saame määrata, kui pikalt ühte käsku täidetakse. 

Ülesanne 
---------

1.  Ülesanne on panna robot sõitma mööda ruudukujulist ala

    a.  Selleks pead tegema alguses ühe *for*-tsükli, mis sõidab otse mingi maa, millest saab ruudu külje pikkus.
    b.  Selle tsükli järel peaks olema teine tsükkel, mis pöörab robotit 90 kraadi (pead leidma sobiva kiiruse ja tsükli pikkuse kombinatsiooni).
    c.  Kuna need tsüklid on suuremas *while*-tsüklis, siis sellest peakski piisama ning robot sõidab igavesti ruutu.
2.  Ava terminal ning loo ssh-ühendus robotisse.
3.  Ava **nano**'ga fail **loops.py**, kasutades analoogset käsku nagu eelmises ülesandes.
4.  Koodis on ära märgitud ala, mida pead muutma.
5.  Kui oled vahepeal draiveri terminali sulgenud, siis jätka punktiga a. Kui see eelmisest ülesandest veel käib, mine otse punkti juurde nr 6.

    a.  Ava uus terminal ning loo ssh-ühendus robotisse.
    b.  Uues terminalis sisesta 

        **roslaunch robotont_teleop teleop_bare.launch**

        nagu ka eelmises ülesandes.
6.  Koodi jooksutamiseks kasuta analoogset **rosrun** käsku nagu eelmises ülesandes, kuid vaheta failinimi, mida jooksutad. Peatamiseks vajuta samas terminalis korraga klahve **Ctrl + C**.

