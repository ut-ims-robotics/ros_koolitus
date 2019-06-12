*For*- ja *while* tsüklid roboti juhtimisel
===========================================

Sissejuhatus
------------

Eelmiste ülesannete juures andsime sõitmiseks robotile ainult ühe käsu. Aga mida teha siis, kui soovime anda robotile mitu ja neid korrata? Näiteks sõita mööda kolmnurka 10 korda või läbida lõpmatu arv kordi kaheksat.
Selleks on programmeerimises olemas tsüklid. *while*-tsüklit, ehk lõpmatut tsüklit kasutasid juba tegelikult eelmistes ülesannetes. Kiiruse muutmise käsku edastati robotile korduvalt, seni kuni programm töötas. 
Robotile on turvalisuse eesmärgil sisse ehitatud nn *failsafe*, mis jätab roboti seisma, kui poole sekundi jooksul uut käsku ei tule. 
Järgnevas näites edastame robotile ühe käsu kindel arv kordi ja siis teise käsku kindel arv kordi. Siinkohal tuleb appi `for-tsükkel <https://progeopik.cs.ut.ee/07_listid.html>`_, mis kordab käske etteantud kordi.

Näide
-----

Pythonis saame tsüklit kasutada nii:

.. code-block:: python

    for i in range(0,30):
      vel_msg.linear.x = 0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)

Iga 0.1 sekundi tagant saadame robotile sõnumi, et ta sõidaks edasi kiirusega 0.2 *m/s* ja seda täpselt 30 korda ehk kokku 3 sekundit.

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

Ülesanne on panna robot sõitma igavesti mööda ruudukujulist ala.

1.  Kasuta ROS käsku :code:`roscd` ja navigeeri ROS kimpu :code:`ros_koolitus`.
2.  Ava :code:`nano` abil fail :code:`loops.py`, mille leiad alamkaustast :code:`scripts/`.
3.  Leia failist muutmiseks ettenähtud ala ja kombineeri eelneva näite põhjal programm, mis läbib ühe ruudu ning ja jõuab tagasi algasendisse.
4.  Ümbritse ruudu läbimise kood *while*-tsükliga, et panna robot igavesti ruutu sõitma.
5.  Testi loodud programmi Gazebo simulatsiooni abil.
6.  Kui Gazeboga teeb programm seda, mis ette nähtud, siis testi seda robotiga (kas otse sülearvutist või kopeerides programmi robotisse). 
